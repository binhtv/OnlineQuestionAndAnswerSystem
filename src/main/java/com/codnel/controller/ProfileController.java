package com.codnel.controller;

import java.io.File;
import java.io.FileNotFoundException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codnel.domain.Profile;
import com.codnel.service.ProfileService;
import com.codnel.service.UserService;

@Controller
@RequestMapping("profile")
public class ProfileController {
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private UserService userService;
	@Autowired
	private ProfileService profileService;

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String showProfileUpdate(@ModelAttribute("profile") Profile profile) {
		return "/profile/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String saveProfile(@ModelAttribute("profile") Profile profile, 
							  RedirectAttributes redirectAttrs) throws FileNotFoundException, Exception {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth == null || "anonymousUser".equals(auth.getPrincipal())) {
			return "redirect:/login";
		}

		User user = (User) auth.getPrincipal();
		com.codnel.domain.User u = userService.findFromUsername(user.getUsername());
		Profile p = profileService.findFromUserId(u.getId());
		
		// save product here
		MultipartFile profilePic = profile.getImage();
		// input file name WITH extension
		System.out.println(profilePic.getOriginalFilename());
		// input filename content type
		System.out.println(profilePic.getContentType());

		String rootDirectory = servletContext.getRealPath("/");
		System.out.println(rootDirectory);

		// isEmpty means file exists BUT NO Content
		if (profilePic != null && !profilePic.isEmpty()) {
			try {
				profilePic.transferTo(new File(rootDirectory + "/uploads/" + u.getUsername() + ".png"));
				p.setImage(profile.getImage());
				profileService.saveProfile(p);
				redirectAttrs.addFlashAttribute("p_success", "Profile image is updated");
			} catch (Exception e) {
				redirectAttrs.addFlashAttribute("p_error", "Profile image cannot be saved");
				throw new FileNotFoundException(
						"Profile image cannot be saved: " + profilePic.getOriginalFilename()
				);
			}
		} else {
			redirectAttrs.addFlashAttribute("p_error", "Profile image is empty");
			throw new Exception(
					"Profile image is empty: " + profilePic.getOriginalFilename()
			);
		}
		
		return "redirect:/profile/update";
	}
}

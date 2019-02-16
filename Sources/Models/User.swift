//
//  User.swift
//  TwitterAPI
//
//  Created by MACHADO KEVIN on 05/02/2019.
//

import Foundation

/// This class contains all properties about a `User`
///
/// You can see here the full documentation https://developer.twitter.com/en/docs/tweets/data-dictionary/overview/user-object
public class User: Decodable {
    
    /// The user identifier
    public let id: String
    
    /// The user name of the user, as they've defined it
    ///
    /// Usually 20 characters, but subject to change
    public let name: String
    
    /// This is the alias of the user
    ///
    /// `screen_name` are unique but subject to change, do not use as identifier, prefer to use `id_str` instead
    public let screenName: String
    
    /// The location defined by the user in his profile
    ///
    /// This is not necessarily a location, nor machine-parseable
    public let location: String?
    
    /// URL provided by the user in association with their profile
    public let url: String?
    
    /// The description of the profile, describing their account
    ///
    /// UTF-8 Encoded
    public let description: String?
    
    /// Indicates whether the user chose to protect their `Tweet`
    ///
    /// See more informations here
    /// https://help.twitter.com/fr/safety-and-security/public-and-protected-tweets
    public let protected: Bool
    
    /// Indicates whether the user has a Verified Account
    public let verified: Bool
    
    /// The number of followers the `User` has
    public let followersCount: Int
    
    /// The number of user the current user is following
    ///
    /// Under certain conditions of duress, this field will temporarily indicate “0”
    public let friendsCount: Int
    
    /// The number of public list the user is member of
    public let listedCount: Int
    
    /// The number of `Tweet` the current user has liked in the account's lifetime
    public let favoritesCount: Int
    
    /// The number of Tweets (including retweets) posted by the user
    public let statusesCount: Int
    
    /// The UTC time that the user was created
    public let createdAt: Date
    
    /// Indicates whether the user allows geotagging their `Tweet`s
    ///
    /// The value must be true for the current user to attach geographic data when posting
    public let geoEnabled: Bool
    
    /// Indicates a BCP47 language identifier corresponding to the user's self-declared user interface language
    ///
    /// See more documentation on `BCP47` here https://tools.ietf.org/html/bcp47
    public let lang: String
    
    /// The color chosen by the user as a background
    ///
    /// This is an hexadecimal field
    public let profileBackgroundColor: String
    
    /// URL pointing to the background image that the user has uploaded for their profile
    ///
    /// This is a HTTP-based URL
    public let profileBackgroundImageUrl: URL
    
    /// URL pointing to the background image that the user has uploaded for their profile
    ///
    /// This is a HTTPS-based URL
    public let profileBackgroundImageUrlHttps: URL
    
    /// Indicates whether the `profile_background_image_url` should be tiled when displayed
    public let profileBackgroundTile: Bool
    
    /// URL pointing to the profile banner
    ///
    /// This is a HTTPS-based URL, the image is a web representation
    ///
    /// By adding a final path element of the URL, it is possible to obtain different image sizes optimized for specific displays
    /// See more infos on Variant Sizes here https://developer.twitter.com/en/docs/accounts-and-users/user-profile-images-and-banners
    public let profileBannerUrl: URL
    
    /// URL pointing to the user's profile image
    ///
    /// This is a HTTP-based URL
    /// See more infos here https://developer.twitter.com/en/docs/accounts-and-users/user-profile-images-and-banners
    public let profileImageUrl: URL
    
    /// URL pointing to the user's profile image
    ///
    /// This is a HTTP-based URL
    /// See more infos here https://developer.twitter.com/en/docs/accounts-and-users/user-profile-images-and-banners
    public let profileImageUrlHttps: URL
    
    /// The color chosen by the user to display links with their Twitter UI
    ///
    /// This is an hexadecimal field
    public let profileLinkColor: String
    
    /// The color chosen by the user to display text with their Twitter UI
    ///
    /// This is an hexadecimal field
    public let profileTextColor: String
    
    /// Indicates whether the user wants their uploaded background image to be used
    public let profileUseBackgroundImage: Bool
    
    /// Indicates whether the user has not altered the theme or background of their user profile
    ///
    /// Returns true if the user has not altered the default profile
    public let defaultProfile: Bool
    
    /// Indicates whether the user has not uploaded their own profile image and that a default image is used instead
    public let defaultProfileImage: Bool
    
    enum UserKeys: String, CodingKey {
        case id = "id_str",
        screenName = "screen_name",
        followersCount = "followers_count",
        friendsCount = "friends_count",
        listedCount = "listed_count",
        favoritesCount = "favorites_count",
        statusesCount = "statuses_count",
        createdAt = "created_at",
        geoEnabled = "geo_enabled",
        profileBackgroundColor = "profile_background_color",
        profileBackgroundImageUrl = "profile_background_image_url",
        profileBackgroundImageUrlHttps = "profile_background_image_url_https",
        profileBackgroundTile = "profile_background_tile",
        profileBannerUrl = "profile_banner_url",
        profileImageUrl = "profile_image_url",
        profileImageUrlHttps = "profile_image_url_https",
        profileLinkColor = "profile_link_color",
        profileTextColor = "profile_text_color",
        profileUseBackgroundImage = "profile_use_background_image",
        defaultProfile = "default_profile",
        defaultProfileImage = "default_profile_image"
        
        case name, location, url, description, protected, verified, lang
    }
}

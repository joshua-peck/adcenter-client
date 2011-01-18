#!/usr/bin/env ruby
require 'CampaignManagementServiceDriver.rb'

endpoint_url = ARGV.shift
obj = ICampaignManagementService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   UpdateBehavioralBids(parameters)
#
# ARGS
#   parameters      UpdateBehavioralBidsRequest - {https://adcenter.microsoft.com/v7}UpdateBehavioralBidsRequest
#
# RETURNS
#   parameters      UpdateBehavioralBidsResponse - {https://adcenter.microsoft.com/v7}UpdateBehavioralBidsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.updateBehavioralBids(parameters)

# SYNOPSIS
#   GetCustomSegments(parameters)
#
# ARGS
#   parameters      GetCustomSegmentsRequest - {https://adcenter.microsoft.com/v7}GetCustomSegmentsRequest
#
# RETURNS
#   parameters      GetCustomSegmentsResponse - {https://adcenter.microsoft.com/v7}GetCustomSegmentsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getCustomSegments(parameters)

# SYNOPSIS
#   AddSegments(parameters)
#
# ARGS
#   parameters      AddSegmentsRequest - {https://adcenter.microsoft.com/v7}AddSegmentsRequest
#
# RETURNS
#   parameters      AddSegmentsResponse - {https://adcenter.microsoft.com/v7}AddSegmentsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addSegments(parameters)

# SYNOPSIS
#   DeleteSegments(parameters)
#
# ARGS
#   parameters      DeleteSegmentsRequest - {https://adcenter.microsoft.com/v7}DeleteSegmentsRequest
#
# RETURNS
#   parameters      DeleteSegmentsResponse - {https://adcenter.microsoft.com/v7}DeleteSegmentsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteSegments(parameters)

# SYNOPSIS
#   GetSegmentsByIds(parameters)
#
# ARGS
#   parameters      GetSegmentsByIdsRequest - {https://adcenter.microsoft.com/v7}GetSegmentsByIdsRequest
#
# RETURNS
#   parameters      GetSegmentsByIdsResponse - {https://adcenter.microsoft.com/v7}GetSegmentsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getSegmentsByIds(parameters)

# SYNOPSIS
#   GetSegments(parameters)
#
# ARGS
#   parameters      GetSegmentsRequest - {https://adcenter.microsoft.com/v7}GetSegmentsRequest
#
# RETURNS
#   parameters      GetSegmentsResponse - {https://adcenter.microsoft.com/v7}GetSegmentsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getSegments(parameters)

# SYNOPSIS
#   SetUsersToSegments(parameters)
#
# ARGS
#   parameters      SetUsersToSegmentsRequest - {https://adcenter.microsoft.com/v7}SetUsersToSegmentsRequest
#
# RETURNS
#   parameters      SetUsersToSegmentsResponse - {https://adcenter.microsoft.com/v7}SetUsersToSegmentsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.setUsersToSegments(parameters)

# SYNOPSIS
#   DeleteUsersFromSegment(parameters)
#
# ARGS
#   parameters      DeleteUsersFromSegmentRequest - {https://adcenter.microsoft.com/v7}DeleteUsersFromSegmentRequest
#
# RETURNS
#   parameters      DeleteUsersFromSegmentResponse - {https://adcenter.microsoft.com/v7}DeleteUsersFromSegmentResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteUsersFromSegment(parameters)

# SYNOPSIS
#   GetNormalizedStrings(parameters)
#
# ARGS
#   parameters      GetNormalizedStringsRequest - {https://adcenter.microsoft.com/v7}GetNormalizedStringsRequest
#
# RETURNS
#   parameters      GetNormalizedStringsResponse - {https://adcenter.microsoft.com/v7}GetNormalizedStringsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getNormalizedStrings(parameters)

# SYNOPSIS
#   GetKeywordEditorialReasonsByIds(parameters)
#
# ARGS
#   parameters      GetKeywordEditorialReasonsByIdsRequest - {https://adcenter.microsoft.com/v7}GetKeywordEditorialReasonsByIdsRequest
#
# RETURNS
#   parameters      GetKeywordEditorialReasonsByIdsResponse - {https://adcenter.microsoft.com/v7}GetKeywordEditorialReasonsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordEditorialReasonsByIds(parameters)

# SYNOPSIS
#   GetAdEditorialReasonsByIds(parameters)
#
# ARGS
#   parameters      GetAdEditorialReasonsByIdsRequest - {https://adcenter.microsoft.com/v7}GetAdEditorialReasonsByIdsRequest
#
# RETURNS
#   parameters      GetAdEditorialReasonsByIdsResponse - {https://adcenter.microsoft.com/v7}GetAdEditorialReasonsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getAdEditorialReasonsByIds(parameters)

# SYNOPSIS
#   GetNetworksByAdGroupIds(parameters)
#
# ARGS
#   parameters      GetNetworksByAdGroupIdsRequest - {https://adcenter.microsoft.com/v7}GetNetworksByAdGroupIdsRequest
#
# RETURNS
#   parameters      GetNetworksByAdGroupIdsResponse - {https://adcenter.microsoft.com/v7}GetNetworksByAdGroupIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getNetworksByAdGroupIds(parameters)

# SYNOPSIS
#   SetNetworksToAdGroups(parameters)
#
# ARGS
#   parameters      SetNetworksToAdGroupsRequest - {https://adcenter.microsoft.com/v7}SetNetworksToAdGroupsRequest
#
# RETURNS
#   parameters      SetNetworksToAdGroupsResponse - {https://adcenter.microsoft.com/v7}SetNetworksToAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.setNetworksToAdGroups(parameters)

# SYNOPSIS
#   AddAds(parameters)
#
# ARGS
#   parameters      AddAdsRequest - {https://adcenter.microsoft.com/v7}AddAdsRequest
#
# RETURNS
#   parameters      AddAdsResponse - {https://adcenter.microsoft.com/v7}AddAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v7}EditorialApiFaultDetail
#
parameters = nil
puts obj.addAds(parameters)

# SYNOPSIS
#   DeleteAds(parameters)
#
# ARGS
#   parameters      DeleteAdsRequest - {https://adcenter.microsoft.com/v7}DeleteAdsRequest
#
# RETURNS
#   parameters      DeleteAdsResponse - {https://adcenter.microsoft.com/v7}DeleteAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.deleteAds(parameters)

# SYNOPSIS
#   GetAdsByEditorialStatus(parameters)
#
# ARGS
#   parameters      GetAdsByEditorialStatusRequest - {https://adcenter.microsoft.com/v7}GetAdsByEditorialStatusRequest
#
# RETURNS
#   parameters      GetAdsByEditorialStatusResponse - {https://adcenter.microsoft.com/v7}GetAdsByEditorialStatusResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAdsByEditorialStatus(parameters)

# SYNOPSIS
#   GetAdsByIds(parameters)
#
# ARGS
#   parameters      GetAdsByIdsRequest - {https://adcenter.microsoft.com/v7}GetAdsByIdsRequest
#
# RETURNS
#   parameters      GetAdsByIdsResponse - {https://adcenter.microsoft.com/v7}GetAdsByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAdsByIds(parameters)

# SYNOPSIS
#   GetAdsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetAdsByAdGroupIdRequest - {https://adcenter.microsoft.com/v7}GetAdsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetAdsByAdGroupIdResponse - {https://adcenter.microsoft.com/v7}GetAdsByAdGroupIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getAdsByAdGroupId(parameters)

# SYNOPSIS
#   UpdateAds(parameters)
#
# ARGS
#   parameters      UpdateAdsRequest - {https://adcenter.microsoft.com/v7}UpdateAdsRequest
#
# RETURNS
#   parameters      UpdateAdsResponse - {https://adcenter.microsoft.com/v7}UpdateAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v7}EditorialApiFaultDetail
#
parameters = nil
puts obj.updateAds(parameters)

# SYNOPSIS
#   PauseAds(parameters)
#
# ARGS
#   parameters      PauseAdsRequest - {https://adcenter.microsoft.com/v7}PauseAdsRequest
#
# RETURNS
#   parameters      PauseAdsResponse - {https://adcenter.microsoft.com/v7}PauseAdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.pauseAds(parameters)

# SYNOPSIS
#   ResumeAds(parameters)
#
# ARGS
#   parameters      ResumeAdsRequest - {https://adcenter.microsoft.com/v7}ResumeAdsRequest
#
# RETURNS
#   parameters      ResumeAdsResponse - {https://adcenter.microsoft.com/v7}ResumeAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.resumeAds(parameters)

# SYNOPSIS
#   AddKeywords(parameters)
#
# ARGS
#   parameters      AddKeywordsRequest - {https://adcenter.microsoft.com/v7}AddKeywordsRequest
#
# RETURNS
#   parameters      AddKeywordsResponse - {https://adcenter.microsoft.com/v7}AddKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v7}EditorialApiFaultDetail
#
parameters = nil
puts obj.addKeywords(parameters)

# SYNOPSIS
#   DeleteKeywords(parameters)
#
# ARGS
#   parameters      DeleteKeywordsRequest - {https://adcenter.microsoft.com/v7}DeleteKeywordsRequest
#
# RETURNS
#   parameters      DeleteKeywordsResponse - {https://adcenter.microsoft.com/v7}DeleteKeywordsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteKeywords(parameters)

# SYNOPSIS
#   GetKeywordsByEditorialStatus(parameters)
#
# ARGS
#   parameters      GetKeywordsByEditorialStatusRequest - {https://adcenter.microsoft.com/v7}GetKeywordsByEditorialStatusRequest
#
# RETURNS
#   parameters      GetKeywordsByEditorialStatusResponse - {https://adcenter.microsoft.com/v7}GetKeywordsByEditorialStatusResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordsByEditorialStatus(parameters)

# SYNOPSIS
#   GetKeywordsByIds(parameters)
#
# ARGS
#   parameters      GetKeywordsByIdsRequest - {https://adcenter.microsoft.com/v7}GetKeywordsByIdsRequest
#
# RETURNS
#   parameters      GetKeywordsByIdsResponse - {https://adcenter.microsoft.com/v7}GetKeywordsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordsByIds(parameters)

# SYNOPSIS
#   GetKeywordsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetKeywordsByAdGroupIdRequest - {https://adcenter.microsoft.com/v7}GetKeywordsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetKeywordsByAdGroupIdResponse - {https://adcenter.microsoft.com/v7}GetKeywordsByAdGroupIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordsByAdGroupId(parameters)

# SYNOPSIS
#   PauseKeywords(parameters)
#
# ARGS
#   parameters      PauseKeywordsRequest - {https://adcenter.microsoft.com/v7}PauseKeywordsRequest
#
# RETURNS
#   parameters      PauseKeywordsResponse - {https://adcenter.microsoft.com/v7}PauseKeywordsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.pauseKeywords(parameters)

# SYNOPSIS
#   ResumeKeywords(parameters)
#
# ARGS
#   parameters      ResumeKeywordsRequest - {https://adcenter.microsoft.com/v7}ResumeKeywordsRequest
#
# RETURNS
#   parameters      ResumeKeywordsResponse - {https://adcenter.microsoft.com/v7}ResumeKeywordsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.resumeKeywords(parameters)

# SYNOPSIS
#   UpdateKeywords(parameters)
#
# ARGS
#   parameters      UpdateKeywordsRequest - {https://adcenter.microsoft.com/v7}UpdateKeywordsRequest
#
# RETURNS
#   parameters      UpdateKeywordsResponse - {https://adcenter.microsoft.com/v7}UpdateKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v7}EditorialApiFaultDetail
#
parameters = nil
puts obj.updateKeywords(parameters)

# SYNOPSIS
#   GetKeywordEstimatesByBids(parameters)
#
# ARGS
#   parameters      GetKeywordEstimatesByBidsRequest - {https://adcenter.microsoft.com/v7}GetKeywordEstimatesByBidsRequest
#
# RETURNS
#   parameters      GetKeywordEstimatesByBidsResponse - {https://adcenter.microsoft.com/v7}GetKeywordEstimatesByBidsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getKeywordEstimatesByBids(parameters)

# SYNOPSIS
#   AddBusinesses(parameters)
#
# ARGS
#   parameters      AddBusinessesRequest - {https://adcenter.microsoft.com/v7}AddBusinessesRequest
#
# RETURNS
#   parameters      AddBusinessesResponse - {https://adcenter.microsoft.com/v7}AddBusinessesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.addBusinesses(parameters)

# SYNOPSIS
#   UpdateBusinesses(parameters)
#
# ARGS
#   parameters      UpdateBusinessesRequest - {https://adcenter.microsoft.com/v7}UpdateBusinessesRequest
#
# RETURNS
#   parameters      UpdateBusinessesResponse - {https://adcenter.microsoft.com/v7}UpdateBusinessesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.updateBusinesses(parameters)

# SYNOPSIS
#   DeleteBusinesses(parameters)
#
# ARGS
#   parameters      DeleteBusinessesRequest - {https://adcenter.microsoft.com/v7}DeleteBusinessesRequest
#
# RETURNS
#   parameters      DeleteBusinessesResponse - {https://adcenter.microsoft.com/v7}DeleteBusinessesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.deleteBusinesses(parameters)

# SYNOPSIS
#   GetBusinessesInfo(parameters)
#
# ARGS
#   parameters      GetBusinessesInfoRequest - {https://adcenter.microsoft.com/v7}GetBusinessesInfoRequest
#
# RETURNS
#   parameters      GetBusinessesInfoResponse - {https://adcenter.microsoft.com/v7}GetBusinessesInfoResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getBusinessesInfo(parameters)

# SYNOPSIS
#   GetBusinessesByIds(parameters)
#
# ARGS
#   parameters      GetBusinessesByIdsRequest - {https://adcenter.microsoft.com/v7}GetBusinessesByIdsRequest
#
# RETURNS
#   parameters      GetBusinessesByIdsResponse - {https://adcenter.microsoft.com/v7}GetBusinessesByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getBusinessesByIds(parameters)

# SYNOPSIS
#   AddSitePlacements(parameters)
#
# ARGS
#   parameters      AddSitePlacementsRequest - {https://adcenter.microsoft.com/v7}AddSitePlacementsRequest
#
# RETURNS
#   parameters      AddSitePlacementsResponse - {https://adcenter.microsoft.com/v7}AddSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.addSitePlacements(parameters)

# SYNOPSIS
#   DeleteSitePlacements(parameters)
#
# ARGS
#   parameters      DeleteSitePlacementsRequest - {https://adcenter.microsoft.com/v7}DeleteSitePlacementsRequest
#
# RETURNS
#   parameters      DeleteSitePlacementsResponse - {https://adcenter.microsoft.com/v7}DeleteSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.deleteSitePlacements(parameters)

# SYNOPSIS
#   GetSitePlacementsByIds(parameters)
#
# ARGS
#   parameters      GetSitePlacementsByIdsRequest - {https://adcenter.microsoft.com/v7}GetSitePlacementsByIdsRequest
#
# RETURNS
#   parameters      GetSitePlacementsByIdsResponse - {https://adcenter.microsoft.com/v7}GetSitePlacementsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getSitePlacementsByIds(parameters)

# SYNOPSIS
#   GetSitePlacementsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetSitePlacementsByAdGroupIdRequest - {https://adcenter.microsoft.com/v7}GetSitePlacementsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetSitePlacementsByAdGroupIdResponse - {https://adcenter.microsoft.com/v7}GetSitePlacementsByAdGroupIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getSitePlacementsByAdGroupId(parameters)

# SYNOPSIS
#   PauseSitePlacements(parameters)
#
# ARGS
#   parameters      PauseSitePlacementsRequest - {https://adcenter.microsoft.com/v7}PauseSitePlacementsRequest
#
# RETURNS
#   parameters      PauseSitePlacementsResponse - {https://adcenter.microsoft.com/v7}PauseSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.pauseSitePlacements(parameters)

# SYNOPSIS
#   ResumeSitePlacements(parameters)
#
# ARGS
#   parameters      ResumeSitePlacementsRequest - {https://adcenter.microsoft.com/v7}ResumeSitePlacementsRequest
#
# RETURNS
#   parameters      ResumeSitePlacementsResponse - {https://adcenter.microsoft.com/v7}ResumeSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.resumeSitePlacements(parameters)

# SYNOPSIS
#   UpdateSitePlacements(parameters)
#
# ARGS
#   parameters      UpdateSitePlacementsRequest - {https://adcenter.microsoft.com/v7}UpdateSitePlacementsRequest
#
# RETURNS
#   parameters      UpdateSitePlacementsResponse - {https://adcenter.microsoft.com/v7}UpdateSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.updateSitePlacements(parameters)

# SYNOPSIS
#   GetPlacementDetailsForUrls(parameters)
#
# ARGS
#   parameters      GetPlacementDetailsForUrlsRequest - {https://adcenter.microsoft.com/v7}GetPlacementDetailsForUrlsRequest
#
# RETURNS
#   parameters      GetPlacementDetailsForUrlsResponse - {https://adcenter.microsoft.com/v7}GetPlacementDetailsForUrlsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getPlacementDetailsForUrls(parameters)

# SYNOPSIS
#   AddBehavioralBids(parameters)
#
# ARGS
#   parameters      AddBehavioralBidsRequest - {https://adcenter.microsoft.com/v7}AddBehavioralBidsRequest
#
# RETURNS
#   parameters      AddBehavioralBidsResponse - {https://adcenter.microsoft.com/v7}AddBehavioralBidsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.addBehavioralBids(parameters)

# SYNOPSIS
#   DeleteBehavioralBids(parameters)
#
# ARGS
#   parameters      DeleteBehavioralBidsRequest - {https://adcenter.microsoft.com/v7}DeleteBehavioralBidsRequest
#
# RETURNS
#   parameters      DeleteBehavioralBidsResponse - {https://adcenter.microsoft.com/v7}DeleteBehavioralBidsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteBehavioralBids(parameters)

# SYNOPSIS
#   GetBehavioralBidsByIds(parameters)
#
# ARGS
#   parameters      GetBehavioralBidsByIdsRequest - {https://adcenter.microsoft.com/v7}GetBehavioralBidsByIdsRequest
#
# RETURNS
#   parameters      GetBehavioralBidsByIdsResponse - {https://adcenter.microsoft.com/v7}GetBehavioralBidsByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getBehavioralBidsByIds(parameters)

# SYNOPSIS
#   GetBehavioralBidsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetBehavioralBidsByAdGroupIdRequest - {https://adcenter.microsoft.com/v7}GetBehavioralBidsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetBehavioralBidsByAdGroupIdResponse - {https://adcenter.microsoft.com/v7}GetBehavioralBidsByAdGroupIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getBehavioralBidsByAdGroupId(parameters)

# SYNOPSIS
#   PauseBehavioralBids(parameters)
#
# ARGS
#   parameters      PauseBehavioralBidsRequest - {https://adcenter.microsoft.com/v7}PauseBehavioralBidsRequest
#
# RETURNS
#   parameters      PauseBehavioralBidsResponse - {https://adcenter.microsoft.com/v7}PauseBehavioralBidsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.pauseBehavioralBids(parameters)

# SYNOPSIS
#   ResumeBehavioralBids(parameters)
#
# ARGS
#   parameters      ResumeBehavioralBidsRequest - {https://adcenter.microsoft.com/v7}ResumeBehavioralBidsRequest
#
# RETURNS
#   parameters      ResumeBehavioralBidsResponse - {https://adcenter.microsoft.com/v7}ResumeBehavioralBidsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.resumeBehavioralBids(parameters)

# SYNOPSIS
#   AddCampaigns(parameters)
#
# ARGS
#   parameters      AddCampaignsRequest - {https://adcenter.microsoft.com/v7}AddCampaignsRequest
#
# RETURNS
#   parameters      AddCampaignsResponse - {https://adcenter.microsoft.com/v7}AddCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.addCampaigns(parameters)

# SYNOPSIS
#   GetCampaignsByAccountId(parameters)
#
# ARGS
#   parameters      GetCampaignsByAccountIdRequest - {https://adcenter.microsoft.com/v7}GetCampaignsByAccountIdRequest
#
# RETURNS
#   parameters      GetCampaignsByAccountIdResponse - {https://adcenter.microsoft.com/v7}GetCampaignsByAccountIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getCampaignsByAccountId(parameters)

# SYNOPSIS
#   GetCampaignsByIds(parameters)
#
# ARGS
#   parameters      GetCampaignsByIdsRequest - {https://adcenter.microsoft.com/v7}GetCampaignsByIdsRequest
#
# RETURNS
#   parameters      GetCampaignsByIdsResponse - {https://adcenter.microsoft.com/v7}GetCampaignsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getCampaignsByIds(parameters)

# SYNOPSIS
#   PauseCampaigns(parameters)
#
# ARGS
#   parameters      PauseCampaignsRequest - {https://adcenter.microsoft.com/v7}PauseCampaignsRequest
#
# RETURNS
#   parameters      PauseCampaignsResponse - {https://adcenter.microsoft.com/v7}PauseCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.pauseCampaigns(parameters)

# SYNOPSIS
#   ResumeCampaigns(parameters)
#
# ARGS
#   parameters      ResumeCampaignsRequest - {https://adcenter.microsoft.com/v7}ResumeCampaignsRequest
#
# RETURNS
#   parameters      ResumeCampaignsResponse - {https://adcenter.microsoft.com/v7}ResumeCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.resumeCampaigns(parameters)

# SYNOPSIS
#   DeleteCampaigns(parameters)
#
# ARGS
#   parameters      DeleteCampaignsRequest - {https://adcenter.microsoft.com/v7}DeleteCampaignsRequest
#
# RETURNS
#   parameters      DeleteCampaignsResponse - {https://adcenter.microsoft.com/v7}DeleteCampaignsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteCampaigns(parameters)

# SYNOPSIS
#   UpdateCampaigns(parameters)
#
# ARGS
#   parameters      UpdateCampaignsRequest - {https://adcenter.microsoft.com/v7}UpdateCampaignsRequest
#
# RETURNS
#   parameters      UpdateCampaignsResponse - {https://adcenter.microsoft.com/v7}UpdateCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.updateCampaigns(parameters)

# SYNOPSIS
#   GetCampaignsInfoByAccountId(parameters)
#
# ARGS
#   parameters      GetCampaignsInfoByAccountIdRequest - {https://adcenter.microsoft.com/v7}GetCampaignsInfoByAccountIdRequest
#
# RETURNS
#   parameters      GetCampaignsInfoByAccountIdResponse - {https://adcenter.microsoft.com/v7}GetCampaignsInfoByAccountIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getCampaignsInfoByAccountId(parameters)

# SYNOPSIS
#   GetNegativeKeywordsByCampaignIds(parameters)
#
# ARGS
#   parameters      GetNegativeKeywordsByCampaignIdsRequest - {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByCampaignIdsRequest
#
# RETURNS
#   parameters      GetNegativeKeywordsByCampaignIdsResponse - {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByCampaignIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getNegativeKeywordsByCampaignIds(parameters)

# SYNOPSIS
#   SetNegativeKeywordsToCampaigns(parameters)
#
# ARGS
#   parameters      SetNegativeKeywordsToCampaignsRequest - {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToCampaignsRequest
#
# RETURNS
#   parameters      SetNegativeKeywordsToCampaignsResponse - {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToCampaignsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.setNegativeKeywordsToCampaigns(parameters)

# SYNOPSIS
#   AddAdGroups(parameters)
#
# ARGS
#   parameters      AddAdGroupsRequest - {https://adcenter.microsoft.com/v7}AddAdGroupsRequest
#
# RETURNS
#   parameters      AddAdGroupsResponse - {https://adcenter.microsoft.com/v7}AddAdGroupsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addAdGroups(parameters)

# SYNOPSIS
#   DeleteAdGroups(parameters)
#
# ARGS
#   parameters      DeleteAdGroupsRequest - {https://adcenter.microsoft.com/v7}DeleteAdGroupsRequest
#
# RETURNS
#   parameters      DeleteAdGroupsResponse - {https://adcenter.microsoft.com/v7}DeleteAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.deleteAdGroups(parameters)

# SYNOPSIS
#   GetAdGroupsByIds(parameters)
#
# ARGS
#   parameters      GetAdGroupsByIdsRequest - {https://adcenter.microsoft.com/v7}GetAdGroupsByIdsRequest
#
# RETURNS
#   parameters      GetAdGroupsByIdsResponse - {https://adcenter.microsoft.com/v7}GetAdGroupsByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAdGroupsByIds(parameters)

# SYNOPSIS
#   GetAdGroupsByCampaignId(parameters)
#
# ARGS
#   parameters      GetAdGroupsByCampaignIdRequest - {https://adcenter.microsoft.com/v7}GetAdGroupsByCampaignIdRequest
#
# RETURNS
#   parameters      GetAdGroupsByCampaignIdResponse - {https://adcenter.microsoft.com/v7}GetAdGroupsByCampaignIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAdGroupsByCampaignId(parameters)

# SYNOPSIS
#   PauseAdGroups(parameters)
#
# ARGS
#   parameters      PauseAdGroupsRequest - {https://adcenter.microsoft.com/v7}PauseAdGroupsRequest
#
# RETURNS
#   parameters      PauseAdGroupsResponse - {https://adcenter.microsoft.com/v7}PauseAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.pauseAdGroups(parameters)

# SYNOPSIS
#   ResumeAdGroups(parameters)
#
# ARGS
#   parameters      ResumeAdGroupsRequest - {https://adcenter.microsoft.com/v7}ResumeAdGroupsRequest
#
# RETURNS
#   parameters      ResumeAdGroupsResponse - {https://adcenter.microsoft.com/v7}ResumeAdGroupsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.resumeAdGroups(parameters)

# SYNOPSIS
#   SubmitAdGroupForApproval(parameters)
#
# ARGS
#   parameters      SubmitAdGroupForApprovalRequest - {https://adcenter.microsoft.com/v7}SubmitAdGroupForApprovalRequest
#
# RETURNS
#   parameters      SubmitAdGroupForApprovalResponse - {https://adcenter.microsoft.com/v7}SubmitAdGroupForApprovalResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.submitAdGroupForApproval(parameters)

# SYNOPSIS
#   UpdateAdGroups(parameters)
#
# ARGS
#   parameters      UpdateAdGroupsRequest - {https://adcenter.microsoft.com/v7}UpdateAdGroupsRequest
#
# RETURNS
#   parameters      UpdateAdGroupsResponse - {https://adcenter.microsoft.com/v7}UpdateAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.updateAdGroups(parameters)

# SYNOPSIS
#   GetAdGroupsInfoByCampaignId(parameters)
#
# ARGS
#   parameters      GetAdGroupsInfoByCampaignIdRequest - {https://adcenter.microsoft.com/v7}GetAdGroupsInfoByCampaignIdRequest
#
# RETURNS
#   parameters      GetAdGroupsInfoByCampaignIdResponse - {https://adcenter.microsoft.com/v7}GetAdGroupsInfoByCampaignIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getAdGroupsInfoByCampaignId(parameters)

# SYNOPSIS
#   GetNegativeKeywordsByAdGroupIds(parameters)
#
# ARGS
#   parameters      GetNegativeKeywordsByAdGroupIdsRequest - {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByAdGroupIdsRequest
#
# RETURNS
#   parameters      GetNegativeKeywordsByAdGroupIdsResponse - {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByAdGroupIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getNegativeKeywordsByAdGroupIds(parameters)

# SYNOPSIS
#   SetNegativeKeywordsToAdGroups(parameters)
#
# ARGS
#   parameters      SetNegativeKeywordsToAdGroupsRequest - {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToAdGroupsRequest
#
# RETURNS
#   parameters      SetNegativeKeywordsToAdGroupsResponse - {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.setNegativeKeywordsToAdGroups(parameters)

# SYNOPSIS
#   AddTarget(parameters)
#
# ARGS
#   parameters      AddTargetRequest - {https://adcenter.microsoft.com/v7}AddTargetRequest
#
# RETURNS
#   parameters      AddTargetResponse - {https://adcenter.microsoft.com/v7}AddTargetResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addTarget(parameters)

# SYNOPSIS
#   DeleteTarget(parameters)
#
# ARGS
#   parameters      DeleteTargetRequest - {https://adcenter.microsoft.com/v7}DeleteTargetRequest
#
# RETURNS
#   parameters      DeleteTargetResponse - {https://adcenter.microsoft.com/v7}DeleteTargetResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteTarget(parameters)

# SYNOPSIS
#   GetTargetByAdGroupId(parameters)
#
# ARGS
#   parameters      GetTargetByAdGroupIdRequest - {https://adcenter.microsoft.com/v7}GetTargetByAdGroupIdRequest
#
# RETURNS
#   parameters      GetTargetByAdGroupIdResponse - {https://adcenter.microsoft.com/v7}GetTargetByAdGroupIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetByAdGroupId(parameters)

# SYNOPSIS
#   UpdateTarget(parameters)
#
# ARGS
#   parameters      UpdateTargetRequest - {https://adcenter.microsoft.com/v7}UpdateTargetRequest
#
# RETURNS
#   parameters      UpdateTargetResponse - {https://adcenter.microsoft.com/v7}UpdateTargetResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.updateTarget(parameters)

# SYNOPSIS
#   AddTargetsToLibrary(parameters)
#
# ARGS
#   parameters      AddTargetsToLibraryRequest - {https://adcenter.microsoft.com/v7}AddTargetsToLibraryRequest
#
# RETURNS
#   parameters      AddTargetsToLibraryResponse - {https://adcenter.microsoft.com/v7}AddTargetsToLibraryResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addTargetsToLibrary(parameters)

# SYNOPSIS
#   UpdateTargetsInLibrary(parameters)
#
# ARGS
#   parameters      UpdateTargetsInLibraryRequest - {https://adcenter.microsoft.com/v7}UpdateTargetsInLibraryRequest
#
# RETURNS
#   parameters      UpdateTargetsInLibraryResponse - {https://adcenter.microsoft.com/v7}UpdateTargetsInLibraryResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.updateTargetsInLibrary(parameters)

# SYNOPSIS
#   DeleteTargetsFromLibrary(parameters)
#
# ARGS
#   parameters      DeleteTargetsFromLibraryRequest - {https://adcenter.microsoft.com/v7}DeleteTargetsFromLibraryRequest
#
# RETURNS
#   parameters      DeleteTargetsFromLibraryResponse - {https://adcenter.microsoft.com/v7}DeleteTargetsFromLibraryResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteTargetsFromLibrary(parameters)

# SYNOPSIS
#   GetTargetsInfoFromLibrary(parameters)
#
# ARGS
#   parameters      GetTargetsInfoFromLibraryRequest - {https://adcenter.microsoft.com/v7}GetTargetsInfoFromLibraryRequest
#
# RETURNS
#   parameters      GetTargetsInfoFromLibraryResponse - {https://adcenter.microsoft.com/v7}GetTargetsInfoFromLibraryResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetsInfoFromLibrary(parameters)

# SYNOPSIS
#   GetTargetsByIds(parameters)
#
# ARGS
#   parameters      GetTargetsByIdsRequest - {https://adcenter.microsoft.com/v7}GetTargetsByIdsRequest
#
# RETURNS
#   parameters      GetTargetsByIdsResponse - {https://adcenter.microsoft.com/v7}GetTargetsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.getTargetsByIds(parameters)

# SYNOPSIS
#   SetTargetToAdGroup(parameters)
#
# ARGS
#   parameters      SetTargetToAdGroupRequest - {https://adcenter.microsoft.com/v7}SetTargetToAdGroupRequest
#
# RETURNS
#   parameters      SetTargetToAdGroupResponse - {https://adcenter.microsoft.com/v7}SetTargetToAdGroupResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.setTargetToAdGroup(parameters)

# SYNOPSIS
#   DeleteTargetFromAdGroup(parameters)
#
# ARGS
#   parameters      DeleteTargetFromAdGroupRequest - {https://adcenter.microsoft.com/v7}DeleteTargetFromAdGroupRequest
#
# RETURNS
#   parameters      DeleteTargetFromAdGroupResponse - {https://adcenter.microsoft.com/v7}DeleteTargetFromAdGroupResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteTargetFromAdGroup(parameters)

# SYNOPSIS
#   GetTargetsByAdGroupIds(parameters)
#
# ARGS
#   parameters      GetTargetsByAdGroupIdsRequest - {https://adcenter.microsoft.com/v7}GetTargetsByAdGroupIdsRequest
#
# RETURNS
#   parameters      GetTargetsByAdGroupIdsResponse - {https://adcenter.microsoft.com/v7}GetTargetsByAdGroupIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetsByAdGroupIds(parameters)

# SYNOPSIS
#   SetTargetToCampaign(parameters)
#
# ARGS
#   parameters      SetTargetToCampaignRequest - {https://adcenter.microsoft.com/v7}SetTargetToCampaignRequest
#
# RETURNS
#   parameters      SetTargetToCampaignResponse - {https://adcenter.microsoft.com/v7}SetTargetToCampaignResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#
parameters = nil
puts obj.setTargetToCampaign(parameters)

# SYNOPSIS
#   DeleteTargetFromCampaign(parameters)
#
# ARGS
#   parameters      DeleteTargetFromCampaignRequest - {https://adcenter.microsoft.com/v7}DeleteTargetFromCampaignRequest
#
# RETURNS
#   parameters      DeleteTargetFromCampaignResponse - {https://adcenter.microsoft.com/v7}DeleteTargetFromCampaignResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteTargetFromCampaign(parameters)

# SYNOPSIS
#   GetTargetsByCampaignIds(parameters)
#
# ARGS
#   parameters      GetTargetsByCampaignIdsRequest - {https://adcenter.microsoft.com/v7}GetTargetsByCampaignIdsRequest
#
# RETURNS
#   parameters      GetTargetsByCampaignIdsResponse - {https://adcenter.microsoft.com/v7}GetTargetsByCampaignIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetsByCampaignIds(parameters)



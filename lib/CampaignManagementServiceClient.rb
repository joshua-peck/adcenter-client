#!/usr/bin/env ruby
require 'CampaignManagementServiceDriver.rb'


module AdCenterWrapper

endpoint_url = ARGV.shift
obj = ICampaignManagementService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetAdsByEditorialStatus(parameters)
#
# ARGS
#   parameters      GetAdsByEditorialStatusRequest - {https://adcenter.microsoft.com/v8}GetAdsByEditorialStatusRequest
#
# RETURNS
#   parameters      GetAdsByEditorialStatusResponse - {https://adcenter.microsoft.com/v8}GetAdsByEditorialStatusResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getAdsByEditorialStatus(parameters)

# SYNOPSIS
#   GetAdsByIds(parameters)
#
# ARGS
#   parameters      GetAdsByIdsRequest - {https://adcenter.microsoft.com/v8}GetAdsByIdsRequest
#
# RETURNS
#   parameters      GetAdsByIdsResponse - {https://adcenter.microsoft.com/v8}GetAdsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getAdsByIds(parameters)

# SYNOPSIS
#   GetAdsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetAdsByAdGroupIdRequest - {https://adcenter.microsoft.com/v8}GetAdsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetAdsByAdGroupIdResponse - {https://adcenter.microsoft.com/v8}GetAdsByAdGroupIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getAdsByAdGroupId(parameters)

# SYNOPSIS
#   UpdateAds(parameters)
#
# ARGS
#   parameters      UpdateAdsRequest - {https://adcenter.microsoft.com/v8}UpdateAdsRequest
#
# RETURNS
#   parameters      UpdateAdsResponse - {https://adcenter.microsoft.com/v8}UpdateAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v8}EditorialApiFaultDetail
#
parameters = nil
puts obj.updateAds(parameters)

# SYNOPSIS
#   PauseAds(parameters)
#
# ARGS
#   parameters      PauseAdsRequest - {https://adcenter.microsoft.com/v8}PauseAdsRequest
#
# RETURNS
#   parameters      PauseAdsResponse - {https://adcenter.microsoft.com/v8}PauseAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.pauseAds(parameters)

# SYNOPSIS
#   ResumeAds(parameters)
#
# ARGS
#   parameters      ResumeAdsRequest - {https://adcenter.microsoft.com/v8}ResumeAdsRequest
#
# RETURNS
#   parameters      ResumeAdsResponse - {https://adcenter.microsoft.com/v8}ResumeAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.resumeAds(parameters)

# SYNOPSIS
#   AddKeywords(parameters)
#
# ARGS
#   parameters      AddKeywordsRequest - {https://adcenter.microsoft.com/v8}AddKeywordsRequest
#
# RETURNS
#   parameters      AddKeywordsResponse - {https://adcenter.microsoft.com/v8}AddKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v8}EditorialApiFaultDetail
#
parameters = nil
puts obj.addKeywords(parameters)

# SYNOPSIS
#   DeleteKeywords(parameters)
#
# ARGS
#   parameters      DeleteKeywordsRequest - {https://adcenter.microsoft.com/v8}DeleteKeywordsRequest
#
# RETURNS
#   parameters      DeleteKeywordsResponse - {https://adcenter.microsoft.com/v8}DeleteKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.deleteKeywords(parameters)

# SYNOPSIS
#   GetKeywordsByEditorialStatus(parameters)
#
# ARGS
#   parameters      GetKeywordsByEditorialStatusRequest - {https://adcenter.microsoft.com/v8}GetKeywordsByEditorialStatusRequest
#
# RETURNS
#   parameters      GetKeywordsByEditorialStatusResponse - {https://adcenter.microsoft.com/v8}GetKeywordsByEditorialStatusResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordsByEditorialStatus(parameters)

# SYNOPSIS
#   GetKeywordsByIds(parameters)
#
# ARGS
#   parameters      GetKeywordsByIdsRequest - {https://adcenter.microsoft.com/v8}GetKeywordsByIdsRequest
#
# RETURNS
#   parameters      GetKeywordsByIdsResponse - {https://adcenter.microsoft.com/v8}GetKeywordsByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getKeywordsByIds(parameters)

# SYNOPSIS
#   GetKeywordsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetKeywordsByAdGroupIdRequest - {https://adcenter.microsoft.com/v8}GetKeywordsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetKeywordsByAdGroupIdResponse - {https://adcenter.microsoft.com/v8}GetKeywordsByAdGroupIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordsByAdGroupId(parameters)

# SYNOPSIS
#   PauseKeywords(parameters)
#
# ARGS
#   parameters      PauseKeywordsRequest - {https://adcenter.microsoft.com/v8}PauseKeywordsRequest
#
# RETURNS
#   parameters      PauseKeywordsResponse - {https://adcenter.microsoft.com/v8}PauseKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.pauseKeywords(parameters)

# SYNOPSIS
#   ResumeKeywords(parameters)
#
# ARGS
#   parameters      ResumeKeywordsRequest - {https://adcenter.microsoft.com/v8}ResumeKeywordsRequest
#
# RETURNS
#   parameters      ResumeKeywordsResponse - {https://adcenter.microsoft.com/v8}ResumeKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.resumeKeywords(parameters)

# SYNOPSIS
#   UpdateKeywords(parameters)
#
# ARGS
#   parameters      UpdateKeywordsRequest - {https://adcenter.microsoft.com/v8}UpdateKeywordsRequest
#
# RETURNS
#   parameters      UpdateKeywordsResponse - {https://adcenter.microsoft.com/v8}UpdateKeywordsResponse
#
# RAISES
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v8}EditorialApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.updateKeywords(parameters)

# SYNOPSIS
#   AddBusinesses(parameters)
#
# ARGS
#   parameters      AddBusinessesRequest - {https://adcenter.microsoft.com/v8}AddBusinessesRequest
#
# RETURNS
#   parameters      AddBusinessesResponse - {https://adcenter.microsoft.com/v8}AddBusinessesResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addBusinesses(parameters)

# SYNOPSIS
#   UpdateBusinesses(parameters)
#
# ARGS
#   parameters      UpdateBusinessesRequest - {https://adcenter.microsoft.com/v8}UpdateBusinessesRequest
#
# RETURNS
#   parameters      UpdateBusinessesResponse - {https://adcenter.microsoft.com/v8}UpdateBusinessesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.updateBusinesses(parameters)

# SYNOPSIS
#   DeleteBusinesses(parameters)
#
# ARGS
#   parameters      DeleteBusinessesRequest - {https://adcenter.microsoft.com/v8}DeleteBusinessesRequest
#
# RETURNS
#   parameters      DeleteBusinessesResponse - {https://adcenter.microsoft.com/v8}DeleteBusinessesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.deleteBusinesses(parameters)

# SYNOPSIS
#   GetBusinessesInfo(parameters)
#
# ARGS
#   parameters      GetBusinessesInfoRequest - {https://adcenter.microsoft.com/v8}GetBusinessesInfoRequest
#
# RETURNS
#   parameters      GetBusinessesInfoResponse - {https://adcenter.microsoft.com/v8}GetBusinessesInfoResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getBusinessesInfo(parameters)

# SYNOPSIS
#   GetBusinessesByIds(parameters)
#
# ARGS
#   parameters      GetBusinessesByIdsRequest - {https://adcenter.microsoft.com/v8}GetBusinessesByIdsRequest
#
# RETURNS
#   parameters      GetBusinessesByIdsResponse - {https://adcenter.microsoft.com/v8}GetBusinessesByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getBusinessesByIds(parameters)

# SYNOPSIS
#   AddSitePlacements(parameters)
#
# ARGS
#   parameters      AddSitePlacementsRequest - {https://adcenter.microsoft.com/v8}AddSitePlacementsRequest
#
# RETURNS
#   parameters      AddSitePlacementsResponse - {https://adcenter.microsoft.com/v8}AddSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.addSitePlacements(parameters)

# SYNOPSIS
#   DeleteSitePlacements(parameters)
#
# ARGS
#   parameters      DeleteSitePlacementsRequest - {https://adcenter.microsoft.com/v8}DeleteSitePlacementsRequest
#
# RETURNS
#   parameters      DeleteSitePlacementsResponse - {https://adcenter.microsoft.com/v8}DeleteSitePlacementsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteSitePlacements(parameters)

# SYNOPSIS
#   GetSitePlacementsByIds(parameters)
#
# ARGS
#   parameters      GetSitePlacementsByIdsRequest - {https://adcenter.microsoft.com/v8}GetSitePlacementsByIdsRequest
#
# RETURNS
#   parameters      GetSitePlacementsByIdsResponse - {https://adcenter.microsoft.com/v8}GetSitePlacementsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getSitePlacementsByIds(parameters)

# SYNOPSIS
#   GetSitePlacementsByAdGroupId(parameters)
#
# ARGS
#   parameters      GetSitePlacementsByAdGroupIdRequest - {https://adcenter.microsoft.com/v8}GetSitePlacementsByAdGroupIdRequest
#
# RETURNS
#   parameters      GetSitePlacementsByAdGroupIdResponse - {https://adcenter.microsoft.com/v8}GetSitePlacementsByAdGroupIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getSitePlacementsByAdGroupId(parameters)

# SYNOPSIS
#   PauseSitePlacements(parameters)
#
# ARGS
#   parameters      PauseSitePlacementsRequest - {https://adcenter.microsoft.com/v8}PauseSitePlacementsRequest
#
# RETURNS
#   parameters      PauseSitePlacementsResponse - {https://adcenter.microsoft.com/v8}PauseSitePlacementsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.pauseSitePlacements(parameters)

# SYNOPSIS
#   ResumeSitePlacements(parameters)
#
# ARGS
#   parameters      ResumeSitePlacementsRequest - {https://adcenter.microsoft.com/v8}ResumeSitePlacementsRequest
#
# RETURNS
#   parameters      ResumeSitePlacementsResponse - {https://adcenter.microsoft.com/v8}ResumeSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.resumeSitePlacements(parameters)

# SYNOPSIS
#   UpdateSitePlacements(parameters)
#
# ARGS
#   parameters      UpdateSitePlacementsRequest - {https://adcenter.microsoft.com/v8}UpdateSitePlacementsRequest
#
# RETURNS
#   parameters      UpdateSitePlacementsResponse - {https://adcenter.microsoft.com/v8}UpdateSitePlacementsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.updateSitePlacements(parameters)

# SYNOPSIS
#   GetPlacementDetailsForUrls(parameters)
#
# ARGS
#   parameters      GetPlacementDetailsForUrlsRequest - {https://adcenter.microsoft.com/v8}GetPlacementDetailsForUrlsRequest
#
# RETURNS
#   parameters      GetPlacementDetailsForUrlsResponse - {https://adcenter.microsoft.com/v8}GetPlacementDetailsForUrlsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getPlacementDetailsForUrls(parameters)

# SYNOPSIS
#   GetNormalizedStrings(parameters)
#
# ARGS
#   parameters      GetNormalizedStringsRequest - {https://adcenter.microsoft.com/v8}GetNormalizedStringsRequest
#
# RETURNS
#   parameters      GetNormalizedStringsResponse - {https://adcenter.microsoft.com/v8}GetNormalizedStringsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getNormalizedStrings(parameters)

# SYNOPSIS
#   GetKeywordEditorialReasonsByIds(parameters)
#
# ARGS
#   parameters      GetKeywordEditorialReasonsByIdsRequest - {https://adcenter.microsoft.com/v8}GetKeywordEditorialReasonsByIdsRequest
#
# RETURNS
#   parameters      GetKeywordEditorialReasonsByIdsResponse - {https://adcenter.microsoft.com/v8}GetKeywordEditorialReasonsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getKeywordEditorialReasonsByIds(parameters)

# SYNOPSIS
#   GetAdEditorialReasonsByIds(parameters)
#
# ARGS
#   parameters      GetAdEditorialReasonsByIdsRequest - {https://adcenter.microsoft.com/v8}GetAdEditorialReasonsByIdsRequest
#
# RETURNS
#   parameters      GetAdEditorialReasonsByIdsResponse - {https://adcenter.microsoft.com/v8}GetAdEditorialReasonsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getAdEditorialReasonsByIds(parameters)

# SYNOPSIS
#   DownloadCampaignHierarchy(parameters)
#
# ARGS
#   parameters      DownloadCampaignHierarchyRequest - {https://adcenter.microsoft.com/v8}DownloadCampaignHierarchyRequest
#
# RETURNS
#   parameters      DownloadCampaignHierarchyResponse - {https://adcenter.microsoft.com/v8}DownloadCampaignHierarchyResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.downloadCampaignHierarchy(parameters)

# SYNOPSIS
#   GetDownloadStatus(parameters)
#
# ARGS
#   parameters      GetDownloadStatusRequest - {https://adcenter.microsoft.com/v8}GetDownloadStatusRequest
#
# RETURNS
#   parameters      GetDownloadStatusResponse - {https://adcenter.microsoft.com/v8}GetDownloadStatusResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getDownloadStatus(parameters)

# SYNOPSIS
#   AddGoals(parameters)
#
# ARGS
#   parameters      AddGoalsRequest - {https://adcenter.microsoft.com/v8}AddGoalsRequest
#
# RETURNS
#   parameters      AddGoalsResponse - {https://adcenter.microsoft.com/v8}AddGoalsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          AnalyticsApiFaultDetail - {https://adcenter.microsoft.com/v8}AnalyticsApiFaultDetail
#
parameters = nil
puts obj.addGoals(parameters)

# SYNOPSIS
#   UpdateGoals(parameters)
#
# ARGS
#   parameters      UpdateGoalsRequest - {https://adcenter.microsoft.com/v8}UpdateGoalsRequest
#
# RETURNS
#   parameters      UpdateGoalsResponse - {https://adcenter.microsoft.com/v8}UpdateGoalsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          AnalyticsApiFaultDetail - {https://adcenter.microsoft.com/v8}AnalyticsApiFaultDetail
#
parameters = nil
puts obj.updateGoals(parameters)

# SYNOPSIS
#   GetGoals(parameters)
#
# ARGS
#   parameters      GetGoalsRequest - {https://adcenter.microsoft.com/v8}GetGoalsRequest
#
# RETURNS
#   parameters      GetGoalsResponse - {https://adcenter.microsoft.com/v8}GetGoalsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getGoals(parameters)

# SYNOPSIS
#   DeleteGoals(parameters)
#
# ARGS
#   parameters      DeleteGoalsRequest - {https://adcenter.microsoft.com/v8}DeleteGoalsRequest
#
# RETURNS
#   parameters      DeleteGoalsResponse - {https://adcenter.microsoft.com/v8}DeleteGoalsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteGoals(parameters)

# SYNOPSIS
#   SetAnalyticsType(parameters)
#
# ARGS
#   parameters      SetAnalyticsTypeRequest - {https://adcenter.microsoft.com/v8}SetAnalyticsTypeRequest
#
# RETURNS
#   parameters      SetAnalyticsTypeResponse - {https://adcenter.microsoft.com/v8}SetAnalyticsTypeResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.setAnalyticsType(parameters)

# SYNOPSIS
#   GetAnalyticsType(parameters)
#
# ARGS
#   parameters      GetAnalyticsTypeRequest - {https://adcenter.microsoft.com/v8}GetAnalyticsTypeRequest
#
# RETURNS
#   parameters      GetAnalyticsTypeResponse - {https://adcenter.microsoft.com/v8}GetAnalyticsTypeResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getAnalyticsType(parameters)

# SYNOPSIS
#   GetCampaignAdExtensions(parameters)
#
# ARGS
#   parameters      GetCampaignAdExtensionsRequest - {https://adcenter.microsoft.com/v8}GetCampaignAdExtensionsRequest
#
# RETURNS
#   parameters      GetCampaignAdExtensionsResponse - {https://adcenter.microsoft.com/v8}GetCampaignAdExtensionsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getCampaignAdExtensions(parameters)

# SYNOPSIS
#   SetCampaignAdExtensions(parameters)
#
# ARGS
#   parameters      SetCampaignAdExtensionsRequest - {https://adcenter.microsoft.com/v8}SetCampaignAdExtensionsRequest
#
# RETURNS
#   parameters      SetCampaignAdExtensionsResponse - {https://adcenter.microsoft.com/v8}SetCampaignAdExtensionsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v8}EditorialApiFaultDetail
#
parameters = nil
puts obj.setCampaignAdExtensions(parameters)

# SYNOPSIS
#   AddCampaigns(parameters)
#
# ARGS
#   parameters      AddCampaignsRequest - {https://adcenter.microsoft.com/v8}AddCampaignsRequest
#
# RETURNS
#   parameters      AddCampaignsResponse - {https://adcenter.microsoft.com/v8}AddCampaignsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addCampaigns(parameters)

# SYNOPSIS
#   GetCampaignsByAccountId(parameters)
#
# ARGS
#   parameters      GetCampaignsByAccountIdRequest - {https://adcenter.microsoft.com/v8}GetCampaignsByAccountIdRequest
#
# RETURNS
#   parameters      GetCampaignsByAccountIdResponse - {https://adcenter.microsoft.com/v8}GetCampaignsByAccountIdResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getCampaignsByAccountId(parameters)

# SYNOPSIS
#   GetCampaignsByIds(parameters)
#
# ARGS
#   parameters      GetCampaignsByIdsRequest - {https://adcenter.microsoft.com/v8}GetCampaignsByIdsRequest
#
# RETURNS
#   parameters      GetCampaignsByIdsResponse - {https://adcenter.microsoft.com/v8}GetCampaignsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getCampaignsByIds(parameters)

# SYNOPSIS
#   PauseCampaigns(parameters)
#
# ARGS
#   parameters      PauseCampaignsRequest - {https://adcenter.microsoft.com/v8}PauseCampaignsRequest
#
# RETURNS
#   parameters      PauseCampaignsResponse - {https://adcenter.microsoft.com/v8}PauseCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.pauseCampaigns(parameters)

# SYNOPSIS
#   ResumeCampaigns(parameters)
#
# ARGS
#   parameters      ResumeCampaignsRequest - {https://adcenter.microsoft.com/v8}ResumeCampaignsRequest
#
# RETURNS
#   parameters      ResumeCampaignsResponse - {https://adcenter.microsoft.com/v8}ResumeCampaignsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.resumeCampaigns(parameters)

# SYNOPSIS
#   DeleteCampaigns(parameters)
#
# ARGS
#   parameters      DeleteCampaignsRequest - {https://adcenter.microsoft.com/v8}DeleteCampaignsRequest
#
# RETURNS
#   parameters      DeleteCampaignsResponse - {https://adcenter.microsoft.com/v8}DeleteCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.deleteCampaigns(parameters)

# SYNOPSIS
#   UpdateCampaigns(parameters)
#
# ARGS
#   parameters      UpdateCampaignsRequest - {https://adcenter.microsoft.com/v8}UpdateCampaignsRequest
#
# RETURNS
#   parameters      UpdateCampaignsResponse - {https://adcenter.microsoft.com/v8}UpdateCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.updateCampaigns(parameters)

# SYNOPSIS
#   GetNegativeKeywordsByCampaignIds(parameters)
#
# ARGS
#   parameters      GetNegativeKeywordsByCampaignIdsRequest - {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByCampaignIdsRequest
#
# RETURNS
#   parameters      GetNegativeKeywordsByCampaignIdsResponse - {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByCampaignIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getNegativeKeywordsByCampaignIds(parameters)

# SYNOPSIS
#   SetNegativeKeywordsToCampaigns(parameters)
#
# ARGS
#   parameters      SetNegativeKeywordsToCampaignsRequest - {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToCampaignsRequest
#
# RETURNS
#   parameters      SetNegativeKeywordsToCampaignsResponse - {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToCampaignsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.setNegativeKeywordsToCampaigns(parameters)

# SYNOPSIS
#   GetNegativeSitesByCampaignIds(parameters)
#
# ARGS
#   parameters      GetNegativeSitesByCampaignIdsRequest - {https://adcenter.microsoft.com/v8}GetNegativeSitesByCampaignIdsRequest
#
# RETURNS
#   parameters      GetNegativeSitesByCampaignIdsResponse - {https://adcenter.microsoft.com/v8}GetNegativeSitesByCampaignIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getNegativeSitesByCampaignIds(parameters)

# SYNOPSIS
#   SetNegativeSitesToCampaigns(parameters)
#
# ARGS
#   parameters      SetNegativeSitesToCampaignsRequest - {https://adcenter.microsoft.com/v8}SetNegativeSitesToCampaignsRequest
#
# RETURNS
#   parameters      SetNegativeSitesToCampaignsResponse - {https://adcenter.microsoft.com/v8}SetNegativeSitesToCampaignsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.setNegativeSitesToCampaigns(parameters)

# SYNOPSIS
#   AddAdGroups(parameters)
#
# ARGS
#   parameters      AddAdGroupsRequest - {https://adcenter.microsoft.com/v8}AddAdGroupsRequest
#
# RETURNS
#   parameters      AddAdGroupsResponse - {https://adcenter.microsoft.com/v8}AddAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.addAdGroups(parameters)

# SYNOPSIS
#   DeleteAdGroups(parameters)
#
# ARGS
#   parameters      DeleteAdGroupsRequest - {https://adcenter.microsoft.com/v8}DeleteAdGroupsRequest
#
# RETURNS
#   parameters      DeleteAdGroupsResponse - {https://adcenter.microsoft.com/v8}DeleteAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.deleteAdGroups(parameters)

# SYNOPSIS
#   GetAdGroupsByIds(parameters)
#
# ARGS
#   parameters      GetAdGroupsByIdsRequest - {https://adcenter.microsoft.com/v8}GetAdGroupsByIdsRequest
#
# RETURNS
#   parameters      GetAdGroupsByIdsResponse - {https://adcenter.microsoft.com/v8}GetAdGroupsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getAdGroupsByIds(parameters)

# SYNOPSIS
#   GetAdGroupsByCampaignId(parameters)
#
# ARGS
#   parameters      GetAdGroupsByCampaignIdRequest - {https://adcenter.microsoft.com/v8}GetAdGroupsByCampaignIdRequest
#
# RETURNS
#   parameters      GetAdGroupsByCampaignIdResponse - {https://adcenter.microsoft.com/v8}GetAdGroupsByCampaignIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAdGroupsByCampaignId(parameters)

# SYNOPSIS
#   PauseAdGroups(parameters)
#
# ARGS
#   parameters      PauseAdGroupsRequest - {https://adcenter.microsoft.com/v8}PauseAdGroupsRequest
#
# RETURNS
#   parameters      PauseAdGroupsResponse - {https://adcenter.microsoft.com/v8}PauseAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.pauseAdGroups(parameters)

# SYNOPSIS
#   ResumeAdGroups(parameters)
#
# ARGS
#   parameters      ResumeAdGroupsRequest - {https://adcenter.microsoft.com/v8}ResumeAdGroupsRequest
#
# RETURNS
#   parameters      ResumeAdGroupsResponse - {https://adcenter.microsoft.com/v8}ResumeAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.resumeAdGroups(parameters)

# SYNOPSIS
#   SubmitAdGroupForApproval(parameters)
#
# ARGS
#   parameters      SubmitAdGroupForApprovalRequest - {https://adcenter.microsoft.com/v8}SubmitAdGroupForApprovalRequest
#
# RETURNS
#   parameters      SubmitAdGroupForApprovalResponse - {https://adcenter.microsoft.com/v8}SubmitAdGroupForApprovalResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.submitAdGroupForApproval(parameters)

# SYNOPSIS
#   UpdateAdGroups(parameters)
#
# ARGS
#   parameters      UpdateAdGroupsRequest - {https://adcenter.microsoft.com/v8}UpdateAdGroupsRequest
#
# RETURNS
#   parameters      UpdateAdGroupsResponse - {https://adcenter.microsoft.com/v8}UpdateAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.updateAdGroups(parameters)

# SYNOPSIS
#   GetNegativeKeywordsByAdGroupIds(parameters)
#
# ARGS
#   parameters      GetNegativeKeywordsByAdGroupIdsRequest - {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByAdGroupIdsRequest
#
# RETURNS
#   parameters      GetNegativeKeywordsByAdGroupIdsResponse - {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByAdGroupIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getNegativeKeywordsByAdGroupIds(parameters)

# SYNOPSIS
#   SetNegativeKeywordsToAdGroups(parameters)
#
# ARGS
#   parameters      SetNegativeKeywordsToAdGroupsRequest - {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToAdGroupsRequest
#
# RETURNS
#   parameters      SetNegativeKeywordsToAdGroupsResponse - {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.setNegativeKeywordsToAdGroups(parameters)

# SYNOPSIS
#   GetNegativeSitesByAdGroupIds(parameters)
#
# ARGS
#   parameters      GetNegativeSitesByAdGroupIdsRequest - {https://adcenter.microsoft.com/v8}GetNegativeSitesByAdGroupIdsRequest
#
# RETURNS
#   parameters      GetNegativeSitesByAdGroupIdsResponse - {https://adcenter.microsoft.com/v8}GetNegativeSitesByAdGroupIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getNegativeSitesByAdGroupIds(parameters)

# SYNOPSIS
#   SetNegativeSitesToAdGroups(parameters)
#
# ARGS
#   parameters      SetNegativeSitesToAdGroupsRequest - {https://adcenter.microsoft.com/v8}SetNegativeSitesToAdGroupsRequest
#
# RETURNS
#   parameters      SetNegativeSitesToAdGroupsResponse - {https://adcenter.microsoft.com/v8}SetNegativeSitesToAdGroupsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.setNegativeSitesToAdGroups(parameters)

# SYNOPSIS
#   AddTarget(parameters)
#
# ARGS
#   parameters      AddTargetRequest - {https://adcenter.microsoft.com/v8}AddTargetRequest
#
# RETURNS
#   parameters      AddTargetResponse - {https://adcenter.microsoft.com/v8}AddTargetResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addTarget(parameters)

# SYNOPSIS
#   DeleteTarget(parameters)
#
# ARGS
#   parameters      DeleteTargetRequest - {https://adcenter.microsoft.com/v8}DeleteTargetRequest
#
# RETURNS
#   parameters      DeleteTargetResponse - {https://adcenter.microsoft.com/v8}DeleteTargetResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.deleteTarget(parameters)

# SYNOPSIS
#   GetTargetByAdGroupId(parameters)
#
# ARGS
#   parameters      GetTargetByAdGroupIdRequest - {https://adcenter.microsoft.com/v8}GetTargetByAdGroupIdRequest
#
# RETURNS
#   parameters      GetTargetByAdGroupIdResponse - {https://adcenter.microsoft.com/v8}GetTargetByAdGroupIdResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetByAdGroupId(parameters)

# SYNOPSIS
#   UpdateTarget(parameters)
#
# ARGS
#   parameters      UpdateTargetRequest - {https://adcenter.microsoft.com/v8}UpdateTargetRequest
#
# RETURNS
#   parameters      UpdateTargetResponse - {https://adcenter.microsoft.com/v8}UpdateTargetResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.updateTarget(parameters)

# SYNOPSIS
#   AddTargetsToLibrary(parameters)
#
# ARGS
#   parameters      AddTargetsToLibraryRequest - {https://adcenter.microsoft.com/v8}AddTargetsToLibraryRequest
#
# RETURNS
#   parameters      AddTargetsToLibraryResponse - {https://adcenter.microsoft.com/v8}AddTargetsToLibraryResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addTargetsToLibrary(parameters)

# SYNOPSIS
#   UpdateTargetsInLibrary(parameters)
#
# ARGS
#   parameters      UpdateTargetsInLibraryRequest - {https://adcenter.microsoft.com/v8}UpdateTargetsInLibraryRequest
#
# RETURNS
#   parameters      UpdateTargetsInLibraryResponse - {https://adcenter.microsoft.com/v8}UpdateTargetsInLibraryResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.updateTargetsInLibrary(parameters)

# SYNOPSIS
#   UpdateDeviceOSTargets(parameters)
#
# ARGS
#   parameters      UpdateDeviceOSTargetsRequest - {https://adcenter.microsoft.com/v8}UpdateDeviceOSTargetsRequest
#
# RETURNS
#   parameters      UpdateDeviceOSTargetsResponse - {https://adcenter.microsoft.com/v8}UpdateDeviceOSTargetsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.updateDeviceOSTargets(parameters)

# SYNOPSIS
#   DeleteTargetsFromLibrary(parameters)
#
# ARGS
#   parameters      DeleteTargetsFromLibraryRequest - {https://adcenter.microsoft.com/v8}DeleteTargetsFromLibraryRequest
#
# RETURNS
#   parameters      DeleteTargetsFromLibraryResponse - {https://adcenter.microsoft.com/v8}DeleteTargetsFromLibraryResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteTargetsFromLibrary(parameters)

# SYNOPSIS
#   GetTargetsInfoFromLibrary(parameters)
#
# ARGS
#   parameters      GetTargetsInfoFromLibraryRequest - {https://adcenter.microsoft.com/v8}GetTargetsInfoFromLibraryRequest
#
# RETURNS
#   parameters      GetTargetsInfoFromLibraryResponse - {https://adcenter.microsoft.com/v8}GetTargetsInfoFromLibraryResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetsInfoFromLibrary(parameters)

# SYNOPSIS
#   GetTargetsByIds(parameters)
#
# ARGS
#   parameters      GetTargetsByIdsRequest - {https://adcenter.microsoft.com/v8}GetTargetsByIdsRequest
#
# RETURNS
#   parameters      GetTargetsByIdsResponse - {https://adcenter.microsoft.com/v8}GetTargetsByIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetsByIds(parameters)

# SYNOPSIS
#   GetDeviceOSTargetsByIds(parameters)
#
# ARGS
#   parameters      GetDeviceOSTargetsByIdsRequest - {https://adcenter.microsoft.com/v8}GetDeviceOSTargetsByIdsRequest
#
# RETURNS
#   parameters      GetDeviceOSTargetsByIdsResponse - {https://adcenter.microsoft.com/v8}GetDeviceOSTargetsByIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getDeviceOSTargetsByIds(parameters)

# SYNOPSIS
#   SetTargetToAdGroup(parameters)
#
# ARGS
#   parameters      SetTargetToAdGroupRequest - {https://adcenter.microsoft.com/v8}SetTargetToAdGroupRequest
#
# RETURNS
#   parameters      SetTargetToAdGroupResponse - {https://adcenter.microsoft.com/v8}SetTargetToAdGroupResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.setTargetToAdGroup(parameters)

# SYNOPSIS
#   DeleteTargetFromAdGroup(parameters)
#
# ARGS
#   parameters      DeleteTargetFromAdGroupRequest - {https://adcenter.microsoft.com/v8}DeleteTargetFromAdGroupRequest
#
# RETURNS
#   parameters      DeleteTargetFromAdGroupResponse - {https://adcenter.microsoft.com/v8}DeleteTargetFromAdGroupResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteTargetFromAdGroup(parameters)

# SYNOPSIS
#   GetTargetsByAdGroupIds(parameters)
#
# ARGS
#   parameters      GetTargetsByAdGroupIdsRequest - {https://adcenter.microsoft.com/v8}GetTargetsByAdGroupIdsRequest
#
# RETURNS
#   parameters      GetTargetsByAdGroupIdsResponse - {https://adcenter.microsoft.com/v8}GetTargetsByAdGroupIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getTargetsByAdGroupIds(parameters)

# SYNOPSIS
#   SetTargetToCampaign(parameters)
#
# ARGS
#   parameters      SetTargetToCampaignRequest - {https://adcenter.microsoft.com/v8}SetTargetToCampaignRequest
#
# RETURNS
#   parameters      SetTargetToCampaignResponse - {https://adcenter.microsoft.com/v8}SetTargetToCampaignResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.setTargetToCampaign(parameters)

# SYNOPSIS
#   DeleteTargetFromCampaign(parameters)
#
# ARGS
#   parameters      DeleteTargetFromCampaignRequest - {https://adcenter.microsoft.com/v8}DeleteTargetFromCampaignRequest
#
# RETURNS
#   parameters      DeleteTargetFromCampaignResponse - {https://adcenter.microsoft.com/v8}DeleteTargetFromCampaignResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.deleteTargetFromCampaign(parameters)

# SYNOPSIS
#   GetTargetsByCampaignIds(parameters)
#
# ARGS
#   parameters      GetTargetsByCampaignIdsRequest - {https://adcenter.microsoft.com/v8}GetTargetsByCampaignIdsRequest
#
# RETURNS
#   parameters      GetTargetsByCampaignIdsResponse - {https://adcenter.microsoft.com/v8}GetTargetsByCampaignIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getTargetsByCampaignIds(parameters)

# SYNOPSIS
#   AddAds(parameters)
#
# ARGS
#   parameters      AddAdsRequest - {https://adcenter.microsoft.com/v8}AddAdsRequest
#
# RETURNS
#   parameters      AddAdsResponse - {https://adcenter.microsoft.com/v8}AddAdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          EditorialApiFaultDetail - {https://adcenter.microsoft.com/v8}EditorialApiFaultDetail
#
parameters = nil
puts obj.addAds(parameters)

# SYNOPSIS
#   DeleteAds(parameters)
#
# ARGS
#   parameters      DeleteAdsRequest - {https://adcenter.microsoft.com/v8}DeleteAdsRequest
#
# RETURNS
#   parameters      DeleteAdsResponse - {https://adcenter.microsoft.com/v8}DeleteAdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteAds(parameters)




end

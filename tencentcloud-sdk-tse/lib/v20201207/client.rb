# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'json'

module TencentCloud
  module Tse
    module V20201207
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-07'
            api_endpoint = 'tse.tencentcloudapi.com'
            sdk_version = 'TSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 关闭 WAF 防护

        # @param request: Request instance for CloseWafProtection.
        # @type request: :class:`Tencentcloud::tse::V20201207::CloseWafProtectionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CloseWafProtectionResponse`
        def CloseWafProtection(request)
          body = send_request('CloseWafProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseWafProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生API网关实例

        # @param request: Request instance for CreateCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayResponse`
        def CreateCloudNativeAPIGateway(request)
          body = send_request('CreateCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关的灰度规则

        # @param request: Request instance for CreateCloudNativeAPIGatewayCanaryRule.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCanaryRuleRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCanaryRuleResponse`
        def CreateCloudNativeAPIGatewayCanaryRule(request)
          body = send_request('CreateCloudNativeAPIGatewayCanaryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayCanaryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关证书

        # @param request: Request instance for CreateCloudNativeAPIGatewayCertificate.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCertificateRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCertificateResponse`
        def CreateCloudNativeAPIGatewayCertificate(request)
          body = send_request('CreateCloudNativeAPIGatewayCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建公网网络配置

        # @param request: Request instance for CreateCloudNativeAPIGatewayPublicNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayPublicNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayPublicNetworkResponse`
        def CreateCloudNativeAPIGatewayPublicNetwork(request)
          body = send_request('CreateCloudNativeAPIGatewayPublicNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayPublicNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关路由

        # @param request: Request instance for CreateCloudNativeAPIGatewayRoute.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteResponse`
        def CreateCloudNativeAPIGatewayRoute(request)
          body = send_request('CreateCloudNativeAPIGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关限流插件(路由)

        # @param request: Request instance for CreateCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteRateLimitResponse`
        def CreateCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('CreateCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关服务

        # @param request: Request instance for CreateCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceResponse`
        def CreateCloudNativeAPIGatewayService(request)
          body = send_request('CreateCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关限流插件(服务)

        # @param request: Request instance for CreateCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceRateLimitResponse`
        def CreateCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('CreateCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建引擎实例

        # @param request: Request instance for CreateEngine.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateEngineRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateEngineResponse`
        def CreateEngine(request)
          body = send_request('CreateEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关引擎分组

        # @param request: Request instance for CreateNativeGatewayServerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateNativeGatewayServerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateNativeGatewayServerGroupResponse`
        def CreateNativeGatewayServerGroup(request)
          body = send_request('CreateNativeGatewayServerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNativeGatewayServerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建 WAF 防护域名

        # @param request: Request instance for CreateWafDomains.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateWafDomainsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateWafDomainsResponse`
        def CreateWafDomains(request)
          body = send_request('CreateWafDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWafDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生API网关实例

        # @param request: Request instance for DeleteCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayResponse`
        def DeleteCloudNativeAPIGateway(request)
          body = send_request('DeleteCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关的灰度规则

        # @param request: Request instance for DeleteCloudNativeAPIGatewayCanaryRule.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCanaryRuleRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCanaryRuleResponse`
        def DeleteCloudNativeAPIGatewayCanaryRule(request)
          body = send_request('DeleteCloudNativeAPIGatewayCanaryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayCanaryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关证书

        # @param request: Request instance for DeleteCloudNativeAPIGatewayCertificate.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCertificateRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCertificateResponse`
        def DeleteCloudNativeAPIGatewayCertificate(request)
          body = send_request('DeleteCloudNativeAPIGatewayCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除公网网络配置

        # @param request: Request instance for DeleteCloudNativeAPIGatewayPublicNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayPublicNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayPublicNetworkResponse`
        def DeleteCloudNativeAPIGatewayPublicNetwork(request)
          body = send_request('DeleteCloudNativeAPIGatewayPublicNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayPublicNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关路由

        # @param request: Request instance for DeleteCloudNativeAPIGatewayRoute.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteResponse`
        def DeleteCloudNativeAPIGatewayRoute(request)
          body = send_request('DeleteCloudNativeAPIGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关的限流插件(路由)

        # @param request: Request instance for DeleteCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteRateLimitResponse`
        def DeleteCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('DeleteCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关服务

        # @param request: Request instance for DeleteCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceResponse`
        def DeleteCloudNativeAPIGatewayService(request)
          body = send_request('DeleteCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关的限流插件(服务)

        # @param request: Request instance for DeleteCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceRateLimitResponse`
        def DeleteCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('DeleteCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除引擎实例

        # @param request: Request instance for DeleteEngine.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteEngineRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteEngineResponse`
        def DeleteEngine(request)
          body = send_request('DeleteEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网关实例分组

        # @param request: Request instance for DeleteNativeGatewayServerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteNativeGatewayServerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteNativeGatewayServerGroupResponse`
        def DeleteNativeGatewayServerGroup(request)
          body = send_request('DeleteNativeGatewayServerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNativeGatewayServerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 WAF 防护域名

        # @param request: Request instance for DeleteWafDomains.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteWafDomainsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteWafDomainsResponse`
        def DeleteWafDomains(request)
          body = send_request('DeleteWafDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWafDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例信息

        # @param request: Request instance for DescribeCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayResponse`
        def DescribeCloudNativeAPIGateway(request)
          body = send_request('DescribeCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关灰度规则列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCanaryRules.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCanaryRulesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCanaryRulesResponse`
        def DescribeCloudNativeAPIGatewayCanaryRules(request)
          body = send_request('DescribeCloudNativeAPIGatewayCanaryRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCanaryRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关单个证书详情

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCertificateDetails.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificateDetailsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificateDetailsResponse`
        def DescribeCloudNativeAPIGatewayCertificateDetails(request)
          body = send_request('DescribeCloudNativeAPIGatewayCertificateDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCertificateDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关证书列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCertificates.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificatesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificatesResponse`
        def DescribeCloudNativeAPIGatewayCertificates(request)
          body = send_request('DescribeCloudNativeAPIGatewayCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例网络配置信息

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConfigResponse`
        def DescribeCloudNativeAPIGatewayConfig(request)
          body = send_request('DescribeCloudNativeAPIGatewayConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关节点列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayNodes.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayNodesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayNodesResponse`
        def DescribeCloudNativeAPIGatewayNodes(request)
          body = send_request('DescribeCloudNativeAPIGatewayNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例端口信息

        # @param request: Request instance for DescribeCloudNativeAPIGatewayPorts.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayPortsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayPortsResponse`
        def DescribeCloudNativeAPIGatewayPorts(request)
          body = send_request('DescribeCloudNativeAPIGatewayPorts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayPortsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关的限流插件(路由)

        # @param request: Request instance for DescribeCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRouteRateLimitResponse`
        def DescribeCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('DescribeCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关路由列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayRoutes.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRoutesResponse`
        def DescribeCloudNativeAPIGatewayRoutes(request)
          body = send_request('DescribeCloudNativeAPIGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayRoutesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关的限流插件(服务)

        # @param request: Request instance for DescribeCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServiceRateLimitResponse`
        def DescribeCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('DescribeCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关服务列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServicesResponse`
        def DescribeCloudNativeAPIGatewayServices(request)
          body = send_request('DescribeCloudNativeAPIGatewayServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关服务详情下的Upstream列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayUpstream.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayUpstreamRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayUpstreamResponse`
        def DescribeCloudNativeAPIGatewayUpstream(request)
          body = send_request('DescribeCloudNativeAPIGatewayUpstream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayUpstreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例列表

        # @param request: Request instance for DescribeCloudNativeAPIGateways.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaysRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaysResponse`
        def DescribeCloudNativeAPIGateways(request)
          body = send_request('DescribeCloudNativeAPIGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Nacos类型引擎实例副本信息

        # @param request: Request instance for DescribeNacosReplicas.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNacosReplicasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNacosReplicasResponse`
        def DescribeNacosReplicas(request)
          body = send_request('DescribeNacosReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNacosReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询nacos服务接口列表

        # @param request: Request instance for DescribeNacosServerInterfaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNacosServerInterfacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNacosServerInterfacesResponse`
        def DescribeNacosServerInterfaces(request)
          body = send_request('DescribeNacosServerInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNacosServerInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关分组信息

        # @param request: Request instance for DescribeNativeGatewayServerGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNativeGatewayServerGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNativeGatewayServerGroupsResponse`
        def DescribeNativeGatewayServerGroups(request)
          body = send_request('DescribeNativeGatewayServerGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNativeGatewayServerGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关服务详情

        # @param request: Request instance for DescribeOneCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeOneCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeOneCloudNativeAPIGatewayServiceResponse`
        def DescribeOneCloudNativeAPIGatewayService(request)
          body = send_request('DescribeOneCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOneCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询引擎实例访问地址

        # @param request: Request instance for DescribeSREInstanceAccessAddress.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressResponse`
        def DescribeSREInstanceAccessAddress(request)
          body = send_request('DescribeSREInstanceAccessAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstanceAccessAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询引擎实例列表

        # @param request: Request instance for DescribeSREInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesResponse`
        def DescribeSREInstances(request)
          body = send_request('DescribeSREInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关服务健康检查配置

        # @param request: Request instance for DescribeUpstreamHealthCheckConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeUpstreamHealthCheckConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeUpstreamHealthCheckConfigResponse`
        def DescribeUpstreamHealthCheckConfig(request)
          body = send_request('DescribeUpstreamHealthCheckConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpstreamHealthCheckConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 WAF 防护域名

        # @param request: Request instance for DescribeWafDomains.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeWafDomainsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeWafDomainsResponse`
        def DescribeWafDomains(request)
          body = send_request('DescribeWafDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 WAF 防护状态

        # @param request: Request instance for DescribeWafProtection.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeWafProtectionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeWafProtectionResponse`
        def DescribeWafProtection(request)
          body = send_request('DescribeWafProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Zookeeper类型注册引擎实例副本信息

        # @param request: Request instance for DescribeZookeeperReplicas.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperReplicasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperReplicasResponse`
        def DescribeZookeeperReplicas(request)
          body = send_request('DescribeZookeeperReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZookeeperReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询zookeeper服务接口列表

        # @param request: Request instance for DescribeZookeeperServerInterfaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperServerInterfacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperServerInterfacesResponse`
        def DescribeZookeeperServerInterfaces(request)
          body = send_request('DescribeZookeeperServerInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZookeeperServerInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例基础信息

        # @param request: Request instance for ModifyCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayResponse`
        def ModifyCloudNativeAPIGateway(request)
          body = send_request('ModifyCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关的灰度规则

        # @param request: Request instance for ModifyCloudNativeAPIGatewayCanaryRule.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCanaryRuleRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCanaryRuleResponse`
        def ModifyCloudNativeAPIGatewayCanaryRule(request)
          body = send_request('ModifyCloudNativeAPIGatewayCanaryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayCanaryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云原生网关证书

        # @param request: Request instance for ModifyCloudNativeAPIGatewayCertificate.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCertificateRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCertificateResponse`
        def ModifyCloudNativeAPIGatewayCertificate(request)
          body = send_request('ModifyCloudNativeAPIGatewayCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关路由

        # @param request: Request instance for ModifyCloudNativeAPIGatewayRoute.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteResponse`
        def ModifyCloudNativeAPIGatewayRoute(request)
          body = send_request('ModifyCloudNativeAPIGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关限流插件(路由)

        # @param request: Request instance for ModifyCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteRateLimitResponse`
        def ModifyCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('ModifyCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关服务

        # @param request: Request instance for ModifyCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceResponse`
        def ModifyCloudNativeAPIGatewayService(request)
          body = send_request('ModifyCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关限流插件(服务)

        # @param request: Request instance for ModifyCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceRateLimitResponse`
        def ModifyCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('ModifyCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网关实例Konga网络配置

        # @param request: Request instance for ModifyConsoleNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyConsoleNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyConsoleNetworkResponse`
        def ModifyConsoleNetwork(request)
          body = send_request('ModifyConsoleNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsoleNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例分组基础信息

        # @param request: Request instance for ModifyNativeGatewayServerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNativeGatewayServerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNativeGatewayServerGroupResponse`
        def ModifyNativeGatewayServerGroup(request)
          body = send_request('ModifyNativeGatewayServerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNativeGatewayServerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例Kong访问策略，支持白名单或者黑名单。

        # @param request: Request instance for ModifyNetworkAccessStrategy.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNetworkAccessStrategyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNetworkAccessStrategyResponse`
        def ModifyNetworkAccessStrategy(request)
          body = send_request('ModifyNetworkAccessStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkAccessStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例网络基本信息，比如带宽以及描述，只支持修改客户端公网/内网的信息。

        # @param request: Request instance for ModifyNetworkBasicInfo.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNetworkBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNetworkBasicInfoResponse`
        def ModifyNetworkBasicInfo(request)
          body = send_request('ModifyNetworkBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkBasicInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关上游实例节点健康状态

        # @param request: Request instance for ModifyUpstreamNodeStatus.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyUpstreamNodeStatusRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyUpstreamNodeStatusResponse`
        def ModifyUpstreamNodeStatus(request)
          body = send_request('ModifyUpstreamNodeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUpstreamNodeStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启 WAF 防护

        # @param request: Request instance for OpenWafProtection.
        # @type request: :class:`Tencentcloud::tse::V20201207::OpenWafProtectionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::OpenWafProtectionResponse`
        def OpenWafProtection(request)
          body = send_request('OpenWafProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenWafProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关证书信息

        # @param request: Request instance for UpdateCloudNativeAPIGatewayCertificateInfo.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewayCertificateInfoRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewayCertificateInfoResponse`
        def UpdateCloudNativeAPIGatewayCertificateInfo(request)
          body = send_request('UpdateCloudNativeAPIGatewayCertificateInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCloudNativeAPIGatewayCertificateInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例的节点规格信息，比如节点扩缩容或者升降配

        # @param request: Request instance for UpdateCloudNativeAPIGatewaySpec.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewaySpecRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewaySpecResponse`
        def UpdateCloudNativeAPIGatewaySpec(request)
          body = send_request('UpdateCloudNativeAPIGatewaySpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCloudNativeAPIGatewaySpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改引擎公网访问配置

        # @param request: Request instance for UpdateEngineInternetAccess.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateEngineInternetAccessRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateEngineInternetAccessResponse`
        def UpdateEngineInternetAccess(request)
          body = send_request('UpdateEngineInternetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEngineInternetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云原生网关健康检查配置

        # @param request: Request instance for UpdateUpstreamHealthCheckConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamHealthCheckConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamHealthCheckConfigResponse`
        def UpdateUpstreamHealthCheckConfig(request)
          body = send_request('UpdateUpstreamHealthCheckConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUpstreamHealthCheckConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新网关上游实例列表，仅支持IPList服务类型

        # @param request: Request instance for UpdateUpstreamTargets.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamTargetsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamTargetsResponse`
        def UpdateUpstreamTargets(request)
          body = send_request('UpdateUpstreamTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUpstreamTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end
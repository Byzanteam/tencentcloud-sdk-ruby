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

module TencentCloud
  module Tse
    module V20201207
      # ManageConfig请求参数结构体
      class ManageConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 配置中心类型（consul、zookeeper、apollo等）
        # @type Type: String
        # @param Command: 请求命名 PUT GET DELETE
        # @type Command: String
        # @param Key: 配置的Key
        # @type Key: String
        # @param Value: 配置的Value
        # @type Value: String

        attr_accessor :InstanceId, :Type, :Command, :Key, :Value
        
        def initialize(instanceid=nil, type=nil, command=nil, key=nil, value=nil)
          @InstanceId = instanceid
          @Type = type
          @Command = command
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @Command = params['Command']
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ManageConfig返回参数结构体
      class ManageConfigResponse < TencentCloud::Common::AbstractModel
        # @param Result: 对配置中心操作配置之后的返回值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

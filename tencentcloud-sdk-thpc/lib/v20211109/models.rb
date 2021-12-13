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
  module Thpc
    module V20211109
      # 描述CFS文件系统版本和挂载信息
      class CFSOption < TencentCloud::Common::AbstractModel
        # @param LocalPath: 文件系统本地挂载路径
        # @type LocalPath: String
        # @param RemotePath: 文件系统远程挂载ip及路径
        # @type RemotePath: String
        # @param Protocol: 文件系统协议类型，默认值NFS 3.0
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型，默认值SD
        # @type StorageType: String

        attr_accessor :LocalPath, :RemotePath, :Protocol, :StorageType
        
        def initialize(localpath=nil, remotepath=nil, protocol=nil, storagetype=nil)
          @LocalPath = localpath
          @RemotePath = remotepath
          @Protocol = protocol
          @StorageType = storagetype
        end

        def deserialize(params)
          @LocalPath = params['LocalPath']
          @RemotePath = params['RemotePath']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
        end
      end

      # 计算节点信息。
      class ComputeNode < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>SPOTPAID：竞价付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20211109.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20211109.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20211109.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # </li><li>购买多个节点，如果指定模式串`{R:x}`，表示生成数字[`[x, x+n-1]`，其中`n`表示购买节点的数量，例如`server_{R:3}`，购买1个时，节点显示名称为`server_3`；购买2个时，节点显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。
        # 购买多个节点，如果不指定模式串，则在节点显示名称添加后缀`1、2...n`，其中`n`表示购买节点的数量，例如`server_`，购买2个时，节点显示名称分别为`server_1`，`server_2`。</li><li>
        # 最多支持60个字符（包含模式串）。
        # @type InstanceName: String

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName
        
        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceName = params['InstanceName']
        end
      end

      # CreateCluster请求参数结构体
      class CreateClusterRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 集群中实例所在的位置。
        # @type Placement: :class:`Tencentcloud::Thpc.v20211109.models.Placement`
        # @param ManagerNode: 指定管理节点。
        # @type ManagerNode: :class:`Tencentcloud::Thpc.v20211109.models.ManagerNode`
        # @param ManagerNodeCount: 指定管理节点的数量。目前仅支持一个管理节点。
        # @type ManagerNodeCount: Integer
        # @param ComputeNode: 指定计算节点。
        # @type ComputeNode: :class:`Tencentcloud::Thpc.v20211109.models.ComputeNode`
        # @param ComputeNodeCount: 指定计算节点的数量。默认取值：0。
        # @type ComputeNodeCount: Integer
        # @param SchedulerType: 调度器类型。目前仅支持SGE调度器。
        # @type SchedulerType: String
        # @param ImageId: 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前仅支持公有镜像和自定义镜像。
        # @type ImageId: String
        # @param VirtualPrivateCloud: 私有网络相关信息配置。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Thpc.v20211109.models.VirtualPrivateCloud`
        # @param LoginSettings: 集群登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Thpc.v20211109.models.LoginSettings`
        # @param SecurityGroupIds: 集群中实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例
        # @type DryRun: Boolean
        # @param AccountType: 域名字服务类型。目前仅支持NIS域名字服务。
        # @type AccountType: String
        # @param ClusterName: 集群显示名称。
        # @type ClusterName: String
        # @param StorageOption: 集群存储选项
        # @type StorageOption: :class:`Tencentcloud::Thpc.v20211109.models.StorageOption`

        attr_accessor :Placement, :ManagerNode, :ManagerNodeCount, :ComputeNode, :ComputeNodeCount, :SchedulerType, :ImageId, :VirtualPrivateCloud, :LoginSettings, :SecurityGroupIds, :ClientToken, :DryRun, :AccountType, :ClusterName, :StorageOption
        
        def initialize(placement=nil, managernode=nil, managernodecount=nil, computenode=nil, computenodecount=nil, schedulertype=nil, imageid=nil, virtualprivatecloud=nil, loginsettings=nil, securitygroupids=nil, clienttoken=nil, dryrun=nil, accounttype=nil, clustername=nil, storageoption=nil)
          @Placement = placement
          @ManagerNode = managernode
          @ManagerNodeCount = managernodecount
          @ComputeNode = computenode
          @ComputeNodeCount = computenodecount
          @SchedulerType = schedulertype
          @ImageId = imageid
          @VirtualPrivateCloud = virtualprivatecloud
          @LoginSettings = loginsettings
          @SecurityGroupIds = securitygroupids
          @ClientToken = clienttoken
          @DryRun = dryrun
          @AccountType = accounttype
          @ClusterName = clustername
          @StorageOption = storageoption
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          unless params['ManagerNode'].nil?
            @ManagerNode = ManagerNode.new
            @ManagerNode.deserialize(params['ManagerNode'])
          end
          @ManagerNodeCount = params['ManagerNodeCount']
          unless params['ComputeNode'].nil?
            @ComputeNode = ComputeNode.new
            @ComputeNode.deserialize(params['ComputeNode'])
          end
          @ComputeNodeCount = params['ComputeNodeCount']
          @SchedulerType = params['SchedulerType']
          @ImageId = params['ImageId']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @SecurityGroupIds = params['SecurityGroupIds']
          @ClientToken = params['ClientToken']
          @DryRun = params['DryRun']
          @AccountType = params['AccountType']
          @ClusterName = params['ClusterName']
          unless params['StorageOption'].nil?
            @StorageOption = StorageOption.new
            @StorageOption.deserialize(params['StorageOption'])
          end
        end
      end

      # CreateCluster返回参数结构体
      class CreateClusterResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :RequestId
        
        def initialize(clusterid=nil, requestid=nil)
          @ClusterId = clusterid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RequestId = params['RequestId']
        end
      end

      # 描述了数据盘的信息
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskSize: 数据盘大小，单位：GB。最小调整步长为10G，不同数据盘类型取值范围不同，具体限制详见：[存储概述](https://cloud.tencent.com/document/product/213/4952)。默认值为0，表示不购买数据盘。更多限制详见产品文档。
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型。数据盘类型限制详见[存储概述](https://cloud.tencent.com/document/product/213/4952)。取值范围：<br><li>LOCAL_BASIC：本地硬盘<br><li>LOCAL_SSD：本地SSD硬盘<br><li>LOCAL_NVME：本地NVME硬盘，与InstanceType强相关，不支持指定<br><li>LOCAL_PRO：本地HDD硬盘，与InstanceType强相关，不支持指定<br><li>CLOUD_BASIC：普通云硬盘<br><li>CLOUD_PREMIUM：高性能云硬盘<br><li>CLOUD_SSD：SSD云硬盘<br><li>CLOUD_HSSD：增强型SSD云硬盘<br><li>CLOUD_TSSD：极速型SSD云硬盘<br><br>默认取值：LOCAL_BASIC。
        # @type DiskType: String

        attr_accessor :DiskSize, :DiskType
        
        def initialize(disksize=nil, disktype=nil)
          @DiskSize = disksize
          @DiskType = disktype
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
        end
      end

      # DeleteCluster请求参数结构体
      class DeleteClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID。
        # @type ClusterId: String

        attr_accessor :ClusterId
        
        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DeleteCluster返回参数结构体
      class DeleteClusterResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag
        
        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 描述了实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：
        # BANDWIDTH_PREPAID：预付费按带宽结算
        # TRAFFIC_POSTPAID_BY_HOUR：流量按小时后付费
        # BANDWIDTH_POSTPAID_BY_HOUR：带宽按小时后付费
        # BANDWIDTH_PACKAGE：带宽包用户
        # 默认取值：非带宽包用户默认与子机付费类型保持一致。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见购买网络带宽。
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut
        
        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：<br><li>Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) \` ~ ! @ # $ % ^ & *  - + = | { } [ ] : ; ' , . ? / ]中的特殊符号。<br><li>Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) \` ~ ! @ # $ % ^ & * - + = | { } [ ] : ; ' , . ? /]中的特殊符号。<br><br>若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # @type Password: String

        attr_accessor :Password
        
        def initialize(password=nil)
          @Password = password
        end

        def deserialize(params)
          @Password = params['Password']
        end
      end

      # 管控节点信息
      class ManagerNode < TencentCloud::Common::AbstractModel
        # @param InstanceChargeType: 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br>默认值：POSTPAID_BY_HOUR。
        # @type InstanceChargeType: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Thpc.v20211109.models.InstanceChargePrepaid`
        # @param InstanceType: 节点机型。不同实例机型指定了不同的资源规格。
        # <br><li>对于付费模式为PREPAID或POSTPAID\_BY\_HOUR的实例创建，具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        # @type InstanceType: String
        # @param SystemDisk: 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        # @type SystemDisk: :class:`Tencentcloud::Thpc.v20211109.models.SystemDisk`
        # @param DataDisks: 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        # @type DataDisks: Array
        # @param InternetAccessible: 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        # @type InternetAccessible: :class:`Tencentcloud::Thpc.v20211109.models.InternetAccessible`
        # @param InstanceName: 节点显示名称。<br><li>
        # 不指定节点显示名称则默认显示‘未命名’。
        # </li><li>购买多个节点，如果指定模式串`{R:x}`，表示生成数字[`[x, x+n-1]`，其中`n`表示购买节点的数量，例如`server_{R:3}`，购买1个时，节点显示名称为`server_3`；购买2个时，节点显示名称分别为`server_3`，`server_4`。支持指定多个模式串`{R:x}`。
        # 购买多个节点，如果不指定模式串，则在节点显示名称添加后缀`1、2...n`，其中`n`表示购买节点的数量，例如`server_`，购买2个时，节点显示名称分别为`server_1`，`server_2`。</li><li>
        # 最多支持60个字符（包含模式串）。
        # @type InstanceName: String

        attr_accessor :InstanceChargeType, :InstanceChargePrepaid, :InstanceType, :SystemDisk, :DataDisks, :InternetAccessible, :InstanceName
        
        def initialize(instancechargetype=nil, instancechargeprepaid=nil, instancetype=nil, systemdisk=nil, datadisks=nil, internetaccessible=nil, instancename=nil)
          @InstanceChargeType = instancechargetype
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceChargeType = params['InstanceChargeType']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceName = params['InstanceName']
        end
      end

      # 描述了实例的抽象位置
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区名称。该参数可以通过调用  [DescribeZones](https://cloud.tencent.com/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String

        attr_accessor :Zone
        
        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # 描述集群文件系统选项
      class StorageOption < TencentCloud::Common::AbstractModel
        # @param CFSOptions: 集群挂载CFS文件系统选项
        # @type CFSOptions: Array

        attr_accessor :CFSOptions
        
        def initialize(cfsoptions=nil)
          @CFSOptions = cfsoptions
        end

        def deserialize(params)
          unless params['CFSOptions'].nil?
            @CFSOptions = []
            params['CFSOptions'].each do |i|
              cfsoption_tmp = CFSOption.new
              cfsoption_tmp.deserialize(i)
              @CFSOptions << cfsoption_tmp
            end
          end
        end
      end

      # 描述了操作系统所在块设备即系统盘的信息
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。系统盘类型限制详见存储概述。取值范围：
        # LOCAL_BASIC：本地硬盘
        # LOCAL_SSD：本地SSD硬盘
        # CLOUD_BASIC：普通云硬盘
        # CLOUD_SSD：SSD云硬盘
        # CLOUD_PREMIUM：高性能云硬盘

        # 默认取值：当前有库存的硬盘类型。
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。默认值为 50
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskSize
        
        def initialize(disktype=nil, disksize=nil)
          @DiskType = disktype
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
        end
      end

      # 描述了VPC相关信息
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID，形如`vpc-xxx`。有效的VpcId可通过登录[控制台](https://console.cloud.tencent.com/vpc/vpc?rid=1)查询；也可以调用接口 [DescribeVpcEx](/document/api/215/1372) ，从接口返回中的`unVpcId`字段获取。若在创建子机时VpcId与SubnetId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如`subnet-xxx`。有效的私有网络子网ID可通过登录[控制台](https://console.cloud.tencent.com/vpc/subnet?rid=1)查询；也可以调用接口  [DescribeSubnets](/document/api/215/15784) ，从接口返回中的`unSubnetId`字段获取。若在创建子机时SubnetId与VpcId同时传入`DEFAULT`，则强制使用默认vpc网络。
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId
        
        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

    end
  end
end


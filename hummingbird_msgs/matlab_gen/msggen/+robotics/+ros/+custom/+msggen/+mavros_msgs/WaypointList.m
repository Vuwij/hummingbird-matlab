classdef WaypointList < robotics.ros.Message
    %WaypointList MATLAB implementation of mavros_msgs/WaypointList
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/WaypointList' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '2cacdc0c2c212eb99fdee9f12d2e1fa4' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        MavrosMsgsWaypointClass = robotics.ros.msg.internal.MessageFactory.getClassForType('mavros_msgs/Waypoint') % Dispatch to MATLAB class for message type mavros_msgs/Waypoint
    end
    
    properties (Dependent)
        CurrentSeq
        Waypoints
    end
    
    properties (Access = protected)
        Cache = struct('Waypoints', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'CurrentSeq', 'Waypoints'} % List of non-constant message properties
        ROSPropertyList = {'current_seq', 'waypoints'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = WaypointList(msg)
            %WaypointList Construct the message object WaypointList
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function currentseq = get.CurrentSeq(obj)
            %get.CurrentSeq Get the value for property CurrentSeq
            currentseq = typecast(int16(obj.JavaMessage.getCurrentSeq), 'uint16');
        end
        
        function set.CurrentSeq(obj, currentseq)
            %set.CurrentSeq Set the value for property CurrentSeq
            validateattributes(currentseq, {'numeric'}, {'nonempty', 'scalar'}, 'WaypointList', 'CurrentSeq');
            
            obj.JavaMessage.setCurrentSeq(currentseq);
        end
        
        function waypoints = get.Waypoints(obj)
            %get.Waypoints Get the value for property Waypoints
            if isempty(obj.Cache.Waypoints)
                javaArray = obj.JavaMessage.getWaypoints;
                array = obj.readJavaArray(javaArray, obj.MavrosMsgsWaypointClass);
                obj.Cache.Waypoints = feval(obj.MavrosMsgsWaypointClass, array);
            end
            waypoints = obj.Cache.Waypoints;
        end
        
        function set.Waypoints(obj, waypoints)
            %set.Waypoints Set the value for property Waypoints
            if ~isvector(waypoints) && isempty(waypoints)
                % Allow empty [] input
                waypoints = feval([obj.MavrosMsgsWaypointClass '.empty'], 0, 1);
            end
            
            validateattributes(waypoints, {obj.MavrosMsgsWaypointClass}, {'vector'}, 'WaypointList', 'Waypoints');
            
            javaArray = obj.JavaMessage.getWaypoints;
            array = obj.writeJavaArray(waypoints, javaArray, obj.MavrosMsgsWaypointClass);
            obj.JavaMessage.setWaypoints(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Waypoints)
                obj.Cache.Waypoints = [];
                obj.Cache.Waypoints = obj.Waypoints;
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Waypoints = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.CurrentSeq = obj.CurrentSeq;
            
            % Recursively copy compound properties
            cpObj.Waypoints = copy(obj.Waypoints);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.CurrentSeq = strObj.CurrentSeq;
            WaypointsCell = arrayfun(@(x) feval([obj.MavrosMsgsWaypointClass '.loadobj'], x), strObj.Waypoints, 'UniformOutput', false);
            obj.Waypoints = vertcat(WaypointsCell{:});
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.CurrentSeq = obj.CurrentSeq;
            strObj.Waypoints = arrayfun(@(x) saveobj(x), obj.Waypoints);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.WaypointList.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.WaypointList;
            obj.reload(strObj);
        end
    end
end
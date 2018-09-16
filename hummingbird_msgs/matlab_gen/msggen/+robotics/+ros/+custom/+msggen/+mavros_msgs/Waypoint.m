classdef Waypoint < robotics.ros.Message
    %Waypoint MATLAB implementation of mavros_msgs/Waypoint
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/Waypoint' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '7a0d2b53dcd6b7aff0aa748703e85e92' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        FRAMEGLOBAL = uint8(0)
        FRAMELOCALNED = uint8(1)
        FRAMEMISSION = uint8(2)
        FRAMEGLOBALRELALT = uint8(3)
        FRAMELOCALENU = uint8(4)
    end
    
    properties (Dependent)
        Frame
        Command
        IsCurrent
        Autocontinue
        Param1
        Param2
        Param3
        Param4
        XLat
        YLong
        ZAlt
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Autocontinue', 'Command', 'Frame', 'IsCurrent', 'Param1', 'Param2', 'Param3', 'Param4', 'XLat', 'YLong', 'ZAlt'} % List of non-constant message properties
        ROSPropertyList = {'autocontinue', 'command', 'frame', 'is_current', 'param1', 'param2', 'param3', 'param4', 'x_lat', 'y_long', 'z_alt'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Waypoint(msg)
            %Waypoint Construct the message object Waypoint
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
        
        function frame = get.Frame(obj)
            %get.Frame Get the value for property Frame
            frame = typecast(int8(obj.JavaMessage.getFrame), 'uint8');
        end
        
        function set.Frame(obj, frame)
            %set.Frame Set the value for property Frame
            validateattributes(frame, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Frame');
            
            obj.JavaMessage.setFrame(frame);
        end
        
        function command = get.Command(obj)
            %get.Command Get the value for property Command
            command = typecast(int16(obj.JavaMessage.getCommand), 'uint16');
        end
        
        function set.Command(obj, command)
            %set.Command Set the value for property Command
            validateattributes(command, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Command');
            
            obj.JavaMessage.setCommand(command);
        end
        
        function iscurrent = get.IsCurrent(obj)
            %get.IsCurrent Get the value for property IsCurrent
            iscurrent = logical(obj.JavaMessage.getIsCurrent);
        end
        
        function set.IsCurrent(obj, iscurrent)
            %set.IsCurrent Set the value for property IsCurrent
            validateattributes(iscurrent, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'IsCurrent');
            
            obj.JavaMessage.setIsCurrent(iscurrent);
        end
        
        function autocontinue = get.Autocontinue(obj)
            %get.Autocontinue Get the value for property Autocontinue
            autocontinue = logical(obj.JavaMessage.getAutocontinue);
        end
        
        function set.Autocontinue(obj, autocontinue)
            %set.Autocontinue Set the value for property Autocontinue
            validateattributes(autocontinue, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Autocontinue');
            
            obj.JavaMessage.setAutocontinue(autocontinue);
        end
        
        function param1 = get.Param1(obj)
            %get.Param1 Get the value for property Param1
            param1 = single(obj.JavaMessage.getParam1);
        end
        
        function set.Param1(obj, param1)
            %set.Param1 Set the value for property Param1
            validateattributes(param1, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Param1');
            
            obj.JavaMessage.setParam1(param1);
        end
        
        function param2 = get.Param2(obj)
            %get.Param2 Get the value for property Param2
            param2 = single(obj.JavaMessage.getParam2);
        end
        
        function set.Param2(obj, param2)
            %set.Param2 Set the value for property Param2
            validateattributes(param2, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Param2');
            
            obj.JavaMessage.setParam2(param2);
        end
        
        function param3 = get.Param3(obj)
            %get.Param3 Get the value for property Param3
            param3 = single(obj.JavaMessage.getParam3);
        end
        
        function set.Param3(obj, param3)
            %set.Param3 Set the value for property Param3
            validateattributes(param3, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Param3');
            
            obj.JavaMessage.setParam3(param3);
        end
        
        function param4 = get.Param4(obj)
            %get.Param4 Get the value for property Param4
            param4 = single(obj.JavaMessage.getParam4);
        end
        
        function set.Param4(obj, param4)
            %set.Param4 Set the value for property Param4
            validateattributes(param4, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'Param4');
            
            obj.JavaMessage.setParam4(param4);
        end
        
        function xlat = get.XLat(obj)
            %get.XLat Get the value for property XLat
            xlat = double(obj.JavaMessage.getXLat);
        end
        
        function set.XLat(obj, xlat)
            %set.XLat Set the value for property XLat
            validateattributes(xlat, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'XLat');
            
            obj.JavaMessage.setXLat(xlat);
        end
        
        function ylong = get.YLong(obj)
            %get.YLong Get the value for property YLong
            ylong = double(obj.JavaMessage.getYLong);
        end
        
        function set.YLong(obj, ylong)
            %set.YLong Set the value for property YLong
            validateattributes(ylong, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'YLong');
            
            obj.JavaMessage.setYLong(ylong);
        end
        
        function zalt = get.ZAlt(obj)
            %get.ZAlt Get the value for property ZAlt
            zalt = double(obj.JavaMessage.getZAlt);
        end
        
        function set.ZAlt(obj, zalt)
            %set.ZAlt Set the value for property ZAlt
            validateattributes(zalt, {'numeric'}, {'nonempty', 'scalar'}, 'Waypoint', 'ZAlt');
            
            obj.JavaMessage.setZAlt(zalt);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Frame = obj.Frame;
            cpObj.Command = obj.Command;
            cpObj.IsCurrent = obj.IsCurrent;
            cpObj.Autocontinue = obj.Autocontinue;
            cpObj.Param1 = obj.Param1;
            cpObj.Param2 = obj.Param2;
            cpObj.Param3 = obj.Param3;
            cpObj.Param4 = obj.Param4;
            cpObj.XLat = obj.XLat;
            cpObj.YLong = obj.YLong;
            cpObj.ZAlt = obj.ZAlt;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Frame = strObj.Frame;
            obj.Command = strObj.Command;
            obj.IsCurrent = strObj.IsCurrent;
            obj.Autocontinue = strObj.Autocontinue;
            obj.Param1 = strObj.Param1;
            obj.Param2 = strObj.Param2;
            obj.Param3 = strObj.Param3;
            obj.Param4 = strObj.Param4;
            obj.XLat = strObj.XLat;
            obj.YLong = strObj.YLong;
            obj.ZAlt = strObj.ZAlt;
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
            
            strObj.Frame = obj.Frame;
            strObj.Command = obj.Command;
            strObj.IsCurrent = obj.IsCurrent;
            strObj.Autocontinue = obj.Autocontinue;
            strObj.Param1 = obj.Param1;
            strObj.Param2 = obj.Param2;
            strObj.Param3 = obj.Param3;
            strObj.Param4 = obj.Param4;
            strObj.XLat = obj.XLat;
            strObj.YLong = obj.YLong;
            strObj.ZAlt = obj.ZAlt;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.Waypoint.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.Waypoint;
            obj.reload(strObj);
        end
    end
end
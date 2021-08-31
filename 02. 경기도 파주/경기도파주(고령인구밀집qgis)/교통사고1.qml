<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.16.8-Hannover" minScale="100000000" labelsEnabled="0" simplifyLocal="1" maxScale="0" readOnly="0" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0" hasScaleBasedVisibilityFlag="0" simplifyDrawingTol="1" simplifyDrawingHints="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal mode="0" durationUnit="min" fixedDuration="0" enabled="0" endField="" startExpression="" endExpression="" accumulate="0" startField="" durationField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 radius="50" type="heatmapRenderer" max_value="0" quality="3" enableorderby="0" radius_unit="2" radius_map_unit_scale="3x:0,0,0,0,0,0" forceraster="0" weight_expression="">
    <colorramp type="gradient" name="[source]">
      <prop k="color1" v="43,131,186,0"/>
      <prop k="color2" v="215,25,28,255"/>
      <prop k="discrete" v="0"/>
      <prop k="rampType" v="gradient"/>
      <prop k="stops" v="0.25;171,221,164,255:0.5;255,255,191,255:0.75;253,174,97,255"/>
    </colorramp>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penWidth="0" spacingUnit="MM" minScaleDenominator="0" penAlpha="255" direction="0" sizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" labelPlacementMethod="XHeight" scaleBasedVisibility="0" spacingUnitScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" spacing="5" barWidth="5" showAxis="1" penColor="#000000" backgroundAlpha="255" scaleDependency="Area" diagramOrientation="Up" minimumSize="0" width="15" sizeType="MM" rotationOffset="270" opacity="1" enabled="0" maxScaleDenominator="1e+08" backgroundColor="#ffffff" height="15">
      <fontProperties style="" description="Gulim,9,-1,5,50,0,0,0,0,0"/>
      <attribute label="" field="" color="#000000"/>
      <axisSymbol>
        <symbol type="line" alpha="1" force_rhr="0" name="" clip_to_extent="1">
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
            <prop k="align_dash_pattern" v="0"/>
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="dash_pattern_offset" v="0"/>
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="dash_pattern_offset_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="tweak_dash_pattern_on_corners" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" dist="0" linePlacementFlags="18" placement="0" showAll="1" zIndex="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <legend type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="사고날짜">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="사고번호">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="사고일시">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="요일">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="시군구">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="사고내용">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="사망자수">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="중상자수">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="경상자수">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="부상신고자수">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="사고유형">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="법규위반">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="노면상태">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="기상상태">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="도로형태">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="가해운전자.차종">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="가해운전자.성별">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="가해운전자.연령">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="가해운전자.상해정도">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="피해운전자.차종">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="피해운전자.성별">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="피해운전자.연령">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="피해운전자.상해정도">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="시도명">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="시군구명">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="도로명">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="소재지도로명주소">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="소재지지번주소">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="횡단보도관리번호">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="횡단보도종류">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="자전거횡단도겸용여부">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="고원식적용여부">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="위도">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="경도">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="차로수">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="횡단보도폭">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="횡단보도연장">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="보행자신호등유무">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="보행자작동신호기유무">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="음향신호기설치여부">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="녹색신호시간">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="적색신호시간">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="교통섬유무">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="보도턱낮춤여부">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="점자블록유무">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="집중조명시설유무">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="관리기관명">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="관리기관전화번호">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="데이터기준일자">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="제공기관코드">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="제공기관명">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="속도">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="날짜">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="지점">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="평균기온(℃)">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="최저기온(℃)">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="최고기온(℃)">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="사고날짜" index="0" name=""/>
    <alias field="사고번호" index="1" name=""/>
    <alias field="사고일시" index="2" name=""/>
    <alias field="요일" index="3" name=""/>
    <alias field="시군구" index="4" name=""/>
    <alias field="사고내용" index="5" name=""/>
    <alias field="사망자수" index="6" name=""/>
    <alias field="중상자수" index="7" name=""/>
    <alias field="경상자수" index="8" name=""/>
    <alias field="부상신고자수" index="9" name=""/>
    <alias field="사고유형" index="10" name=""/>
    <alias field="법규위반" index="11" name=""/>
    <alias field="노면상태" index="12" name=""/>
    <alias field="기상상태" index="13" name=""/>
    <alias field="도로형태" index="14" name=""/>
    <alias field="가해운전자.차종" index="15" name=""/>
    <alias field="가해운전자.성별" index="16" name=""/>
    <alias field="가해운전자.연령" index="17" name=""/>
    <alias field="가해운전자.상해정도" index="18" name=""/>
    <alias field="피해운전자.차종" index="19" name=""/>
    <alias field="피해운전자.성별" index="20" name=""/>
    <alias field="피해운전자.연령" index="21" name=""/>
    <alias field="피해운전자.상해정도" index="22" name=""/>
    <alias field="시도명" index="23" name=""/>
    <alias field="시군구명" index="24" name=""/>
    <alias field="도로명" index="25" name=""/>
    <alias field="소재지도로명주소" index="26" name=""/>
    <alias field="소재지지번주소" index="27" name=""/>
    <alias field="횡단보도관리번호" index="28" name=""/>
    <alias field="횡단보도종류" index="29" name=""/>
    <alias field="자전거횡단도겸용여부" index="30" name=""/>
    <alias field="고원식적용여부" index="31" name=""/>
    <alias field="위도" index="32" name=""/>
    <alias field="경도" index="33" name=""/>
    <alias field="차로수" index="34" name=""/>
    <alias field="횡단보도폭" index="35" name=""/>
    <alias field="횡단보도연장" index="36" name=""/>
    <alias field="보행자신호등유무" index="37" name=""/>
    <alias field="보행자작동신호기유무" index="38" name=""/>
    <alias field="음향신호기설치여부" index="39" name=""/>
    <alias field="녹색신호시간" index="40" name=""/>
    <alias field="적색신호시간" index="41" name=""/>
    <alias field="교통섬유무" index="42" name=""/>
    <alias field="보도턱낮춤여부" index="43" name=""/>
    <alias field="점자블록유무" index="44" name=""/>
    <alias field="집중조명시설유무" index="45" name=""/>
    <alias field="관리기관명" index="46" name=""/>
    <alias field="관리기관전화번호" index="47" name=""/>
    <alias field="데이터기준일자" index="48" name=""/>
    <alias field="제공기관코드" index="49" name=""/>
    <alias field="제공기관명" index="50" name=""/>
    <alias field="속도" index="51" name=""/>
    <alias field="날짜" index="52" name=""/>
    <alias field="지점" index="53" name=""/>
    <alias field="평균기온(℃)" index="54" name=""/>
    <alias field="최저기온(℃)" index="55" name=""/>
    <alias field="최고기온(℃)" index="56" name=""/>
  </aliases>
  <defaults>
    <default expression="" field="사고날짜" applyOnUpdate="0"/>
    <default expression="" field="사고번호" applyOnUpdate="0"/>
    <default expression="" field="사고일시" applyOnUpdate="0"/>
    <default expression="" field="요일" applyOnUpdate="0"/>
    <default expression="" field="시군구" applyOnUpdate="0"/>
    <default expression="" field="사고내용" applyOnUpdate="0"/>
    <default expression="" field="사망자수" applyOnUpdate="0"/>
    <default expression="" field="중상자수" applyOnUpdate="0"/>
    <default expression="" field="경상자수" applyOnUpdate="0"/>
    <default expression="" field="부상신고자수" applyOnUpdate="0"/>
    <default expression="" field="사고유형" applyOnUpdate="0"/>
    <default expression="" field="법규위반" applyOnUpdate="0"/>
    <default expression="" field="노면상태" applyOnUpdate="0"/>
    <default expression="" field="기상상태" applyOnUpdate="0"/>
    <default expression="" field="도로형태" applyOnUpdate="0"/>
    <default expression="" field="가해운전자.차종" applyOnUpdate="0"/>
    <default expression="" field="가해운전자.성별" applyOnUpdate="0"/>
    <default expression="" field="가해운전자.연령" applyOnUpdate="0"/>
    <default expression="" field="가해운전자.상해정도" applyOnUpdate="0"/>
    <default expression="" field="피해운전자.차종" applyOnUpdate="0"/>
    <default expression="" field="피해운전자.성별" applyOnUpdate="0"/>
    <default expression="" field="피해운전자.연령" applyOnUpdate="0"/>
    <default expression="" field="피해운전자.상해정도" applyOnUpdate="0"/>
    <default expression="" field="시도명" applyOnUpdate="0"/>
    <default expression="" field="시군구명" applyOnUpdate="0"/>
    <default expression="" field="도로명" applyOnUpdate="0"/>
    <default expression="" field="소재지도로명주소" applyOnUpdate="0"/>
    <default expression="" field="소재지지번주소" applyOnUpdate="0"/>
    <default expression="" field="횡단보도관리번호" applyOnUpdate="0"/>
    <default expression="" field="횡단보도종류" applyOnUpdate="0"/>
    <default expression="" field="자전거횡단도겸용여부" applyOnUpdate="0"/>
    <default expression="" field="고원식적용여부" applyOnUpdate="0"/>
    <default expression="" field="위도" applyOnUpdate="0"/>
    <default expression="" field="경도" applyOnUpdate="0"/>
    <default expression="" field="차로수" applyOnUpdate="0"/>
    <default expression="" field="횡단보도폭" applyOnUpdate="0"/>
    <default expression="" field="횡단보도연장" applyOnUpdate="0"/>
    <default expression="" field="보행자신호등유무" applyOnUpdate="0"/>
    <default expression="" field="보행자작동신호기유무" applyOnUpdate="0"/>
    <default expression="" field="음향신호기설치여부" applyOnUpdate="0"/>
    <default expression="" field="녹색신호시간" applyOnUpdate="0"/>
    <default expression="" field="적색신호시간" applyOnUpdate="0"/>
    <default expression="" field="교통섬유무" applyOnUpdate="0"/>
    <default expression="" field="보도턱낮춤여부" applyOnUpdate="0"/>
    <default expression="" field="점자블록유무" applyOnUpdate="0"/>
    <default expression="" field="집중조명시설유무" applyOnUpdate="0"/>
    <default expression="" field="관리기관명" applyOnUpdate="0"/>
    <default expression="" field="관리기관전화번호" applyOnUpdate="0"/>
    <default expression="" field="데이터기준일자" applyOnUpdate="0"/>
    <default expression="" field="제공기관코드" applyOnUpdate="0"/>
    <default expression="" field="제공기관명" applyOnUpdate="0"/>
    <default expression="" field="속도" applyOnUpdate="0"/>
    <default expression="" field="날짜" applyOnUpdate="0"/>
    <default expression="" field="지점" applyOnUpdate="0"/>
    <default expression="" field="평균기온(℃)" applyOnUpdate="0"/>
    <default expression="" field="최저기온(℃)" applyOnUpdate="0"/>
    <default expression="" field="최고기온(℃)" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="사고날짜" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="사고번호" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="사고일시" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="요일" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="시군구" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="사고내용" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="사망자수" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="중상자수" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="경상자수" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="부상신고자수" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="사고유형" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="법규위반" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="노면상태" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="기상상태" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="도로형태" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="가해운전자.차종" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="가해운전자.성별" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="가해운전자.연령" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="가해운전자.상해정도" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="피해운전자.차종" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="피해운전자.성별" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="피해운전자.연령" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="피해운전자.상해정도" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="시도명" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="시군구명" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="도로명" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="소재지도로명주소" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="소재지지번주소" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="횡단보도관리번호" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="횡단보도종류" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="자전거횡단도겸용여부" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="고원식적용여부" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="위도" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="경도" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="차로수" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="횡단보도폭" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="횡단보도연장" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="보행자신호등유무" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="보행자작동신호기유무" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="음향신호기설치여부" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="녹색신호시간" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="적색신호시간" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="교통섬유무" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="보도턱낮춤여부" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="점자블록유무" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="집중조명시설유무" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="관리기관명" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="관리기관전화번호" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="데이터기준일자" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="제공기관코드" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="제공기관명" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="속도" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="날짜" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="지점" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="평균기온(℃)" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="최저기온(℃)" notnull_strength="0"/>
    <constraint constraints="0" exp_strength="0" unique_strength="0" field="최고기온(℃)" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="사고날짜" exp="" desc=""/>
    <constraint field="사고번호" exp="" desc=""/>
    <constraint field="사고일시" exp="" desc=""/>
    <constraint field="요일" exp="" desc=""/>
    <constraint field="시군구" exp="" desc=""/>
    <constraint field="사고내용" exp="" desc=""/>
    <constraint field="사망자수" exp="" desc=""/>
    <constraint field="중상자수" exp="" desc=""/>
    <constraint field="경상자수" exp="" desc=""/>
    <constraint field="부상신고자수" exp="" desc=""/>
    <constraint field="사고유형" exp="" desc=""/>
    <constraint field="법규위반" exp="" desc=""/>
    <constraint field="노면상태" exp="" desc=""/>
    <constraint field="기상상태" exp="" desc=""/>
    <constraint field="도로형태" exp="" desc=""/>
    <constraint field="가해운전자.차종" exp="" desc=""/>
    <constraint field="가해운전자.성별" exp="" desc=""/>
    <constraint field="가해운전자.연령" exp="" desc=""/>
    <constraint field="가해운전자.상해정도" exp="" desc=""/>
    <constraint field="피해운전자.차종" exp="" desc=""/>
    <constraint field="피해운전자.성별" exp="" desc=""/>
    <constraint field="피해운전자.연령" exp="" desc=""/>
    <constraint field="피해운전자.상해정도" exp="" desc=""/>
    <constraint field="시도명" exp="" desc=""/>
    <constraint field="시군구명" exp="" desc=""/>
    <constraint field="도로명" exp="" desc=""/>
    <constraint field="소재지도로명주소" exp="" desc=""/>
    <constraint field="소재지지번주소" exp="" desc=""/>
    <constraint field="횡단보도관리번호" exp="" desc=""/>
    <constraint field="횡단보도종류" exp="" desc=""/>
    <constraint field="자전거횡단도겸용여부" exp="" desc=""/>
    <constraint field="고원식적용여부" exp="" desc=""/>
    <constraint field="위도" exp="" desc=""/>
    <constraint field="경도" exp="" desc=""/>
    <constraint field="차로수" exp="" desc=""/>
    <constraint field="횡단보도폭" exp="" desc=""/>
    <constraint field="횡단보도연장" exp="" desc=""/>
    <constraint field="보행자신호등유무" exp="" desc=""/>
    <constraint field="보행자작동신호기유무" exp="" desc=""/>
    <constraint field="음향신호기설치여부" exp="" desc=""/>
    <constraint field="녹색신호시간" exp="" desc=""/>
    <constraint field="적색신호시간" exp="" desc=""/>
    <constraint field="교통섬유무" exp="" desc=""/>
    <constraint field="보도턱낮춤여부" exp="" desc=""/>
    <constraint field="점자블록유무" exp="" desc=""/>
    <constraint field="집중조명시설유무" exp="" desc=""/>
    <constraint field="관리기관명" exp="" desc=""/>
    <constraint field="관리기관전화번호" exp="" desc=""/>
    <constraint field="데이터기준일자" exp="" desc=""/>
    <constraint field="제공기관코드" exp="" desc=""/>
    <constraint field="제공기관명" exp="" desc=""/>
    <constraint field="속도" exp="" desc=""/>
    <constraint field="날짜" exp="" desc=""/>
    <constraint field="지점" exp="" desc=""/>
    <constraint field="평균기온(℃)" exp="" desc=""/>
    <constraint field="최저기온(℃)" exp="" desc=""/>
    <constraint field="최고기온(℃)" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" width="-1" hidden="0" name="사고날짜"/>
      <column type="field" width="-1" hidden="0" name="사고번호"/>
      <column type="field" width="-1" hidden="0" name="사고일시"/>
      <column type="field" width="-1" hidden="0" name="요일"/>
      <column type="field" width="-1" hidden="0" name="시군구"/>
      <column type="field" width="-1" hidden="0" name="사고내용"/>
      <column type="field" width="-1" hidden="0" name="사망자수"/>
      <column type="field" width="-1" hidden="0" name="중상자수"/>
      <column type="field" width="-1" hidden="0" name="경상자수"/>
      <column type="field" width="-1" hidden="0" name="부상신고자수"/>
      <column type="field" width="-1" hidden="0" name="사고유형"/>
      <column type="field" width="-1" hidden="0" name="법규위반"/>
      <column type="field" width="-1" hidden="0" name="노면상태"/>
      <column type="field" width="-1" hidden="0" name="기상상태"/>
      <column type="field" width="-1" hidden="0" name="도로형태"/>
      <column type="field" width="-1" hidden="0" name="가해운전자.차종"/>
      <column type="field" width="-1" hidden="0" name="가해운전자.성별"/>
      <column type="field" width="-1" hidden="0" name="가해운전자.연령"/>
      <column type="field" width="-1" hidden="0" name="가해운전자.상해정도"/>
      <column type="field" width="-1" hidden="0" name="피해운전자.차종"/>
      <column type="field" width="-1" hidden="0" name="피해운전자.성별"/>
      <column type="field" width="-1" hidden="0" name="피해운전자.연령"/>
      <column type="field" width="-1" hidden="0" name="피해운전자.상해정도"/>
      <column type="field" width="-1" hidden="0" name="시도명"/>
      <column type="field" width="-1" hidden="0" name="시군구명"/>
      <column type="field" width="-1" hidden="0" name="도로명"/>
      <column type="field" width="-1" hidden="0" name="소재지도로명주소"/>
      <column type="field" width="-1" hidden="0" name="소재지지번주소"/>
      <column type="field" width="-1" hidden="0" name="횡단보도관리번호"/>
      <column type="field" width="-1" hidden="0" name="횡단보도종류"/>
      <column type="field" width="-1" hidden="0" name="자전거횡단도겸용여부"/>
      <column type="field" width="-1" hidden="0" name="고원식적용여부"/>
      <column type="field" width="-1" hidden="0" name="위도"/>
      <column type="field" width="-1" hidden="0" name="경도"/>
      <column type="field" width="-1" hidden="0" name="차로수"/>
      <column type="field" width="-1" hidden="0" name="횡단보도폭"/>
      <column type="field" width="-1" hidden="0" name="횡단보도연장"/>
      <column type="field" width="-1" hidden="0" name="보행자신호등유무"/>
      <column type="field" width="-1" hidden="0" name="보행자작동신호기유무"/>
      <column type="field" width="-1" hidden="0" name="음향신호기설치여부"/>
      <column type="field" width="-1" hidden="0" name="녹색신호시간"/>
      <column type="field" width="-1" hidden="0" name="적색신호시간"/>
      <column type="field" width="-1" hidden="0" name="교통섬유무"/>
      <column type="field" width="-1" hidden="0" name="보도턱낮춤여부"/>
      <column type="field" width="-1" hidden="0" name="점자블록유무"/>
      <column type="field" width="-1" hidden="0" name="집중조명시설유무"/>
      <column type="field" width="-1" hidden="0" name="관리기관명"/>
      <column type="field" width="-1" hidden="0" name="관리기관전화번호"/>
      <column type="field" width="-1" hidden="0" name="데이터기준일자"/>
      <column type="field" width="-1" hidden="0" name="제공기관코드"/>
      <column type="field" width="-1" hidden="0" name="제공기관명"/>
      <column type="field" width="-1" hidden="0" name="속도"/>
      <column type="field" width="-1" hidden="0" name="날짜"/>
      <column type="field" width="-1" hidden="0" name="지점"/>
      <column type="field" width="-1" hidden="0" name="평균기온(℃)"/>
      <column type="field" width="-1" hidden="0" name="최저기온(℃)"/>
      <column type="field" width="-1" hidden="0" name="최고기온(℃)"/>
      <column type="actions" width="-1" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS 양식은 양식이 열릴 때 호출된 파이썬 함수를 보유할 수 있습니다.

이 함수를 사용해서 사용자 양식에 추가 로직을 추가하십시오.

"파이썬 초기 함수" 란에 함수 이름을 입력하십시오.
예제:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="가해운전자.상해정도"/>
    <field editable="1" name="가해운전자.성별"/>
    <field editable="1" name="가해운전자.연령"/>
    <field editable="1" name="가해운전자.차종"/>
    <field editable="1" name="경도"/>
    <field editable="1" name="경상자수"/>
    <field editable="1" name="고원식적용여부"/>
    <field editable="1" name="관리기관명"/>
    <field editable="1" name="관리기관전화번호"/>
    <field editable="1" name="교통섬유무"/>
    <field editable="1" name="기상상태"/>
    <field editable="1" name="날짜"/>
    <field editable="1" name="노면상태"/>
    <field editable="1" name="녹색신호시간"/>
    <field editable="1" name="데이터기준일자"/>
    <field editable="1" name="도로명"/>
    <field editable="1" name="도로형태"/>
    <field editable="1" name="법규위반"/>
    <field editable="1" name="보도턱낮춤여부"/>
    <field editable="1" name="보행자신호등유무"/>
    <field editable="1" name="보행자작동신호기유무"/>
    <field editable="1" name="부상신고자수"/>
    <field editable="1" name="사고날짜"/>
    <field editable="1" name="사고내용"/>
    <field editable="1" name="사고번호"/>
    <field editable="1" name="사고유형"/>
    <field editable="1" name="사고일시"/>
    <field editable="1" name="사망자수"/>
    <field editable="1" name="소재지도로명주소"/>
    <field editable="1" name="소재지지번주소"/>
    <field editable="1" name="속도"/>
    <field editable="1" name="시군구"/>
    <field editable="1" name="시군구명"/>
    <field editable="1" name="시도명"/>
    <field editable="1" name="요일"/>
    <field editable="1" name="위도"/>
    <field editable="1" name="음향신호기설치여부"/>
    <field editable="1" name="자전거횡단도겸용여부"/>
    <field editable="1" name="적색신호시간"/>
    <field editable="1" name="점자블록유무"/>
    <field editable="1" name="제공기관명"/>
    <field editable="1" name="제공기관코드"/>
    <field editable="1" name="중상자수"/>
    <field editable="1" name="지점"/>
    <field editable="1" name="집중조명시설유무"/>
    <field editable="1" name="차로수"/>
    <field editable="1" name="최고기온(℃)"/>
    <field editable="1" name="최저기온(℃)"/>
    <field editable="1" name="평균기온(℃)"/>
    <field editable="1" name="피해운전자.상해정도"/>
    <field editable="1" name="피해운전자.성별"/>
    <field editable="1" name="피해운전자.연령"/>
    <field editable="1" name="피해운전자.차종"/>
    <field editable="1" name="횡단보도관리번호"/>
    <field editable="1" name="횡단보도연장"/>
    <field editable="1" name="횡단보도종류"/>
    <field editable="1" name="횡단보도폭"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="가해운전자.상해정도"/>
    <field labelOnTop="0" name="가해운전자.성별"/>
    <field labelOnTop="0" name="가해운전자.연령"/>
    <field labelOnTop="0" name="가해운전자.차종"/>
    <field labelOnTop="0" name="경도"/>
    <field labelOnTop="0" name="경상자수"/>
    <field labelOnTop="0" name="고원식적용여부"/>
    <field labelOnTop="0" name="관리기관명"/>
    <field labelOnTop="0" name="관리기관전화번호"/>
    <field labelOnTop="0" name="교통섬유무"/>
    <field labelOnTop="0" name="기상상태"/>
    <field labelOnTop="0" name="날짜"/>
    <field labelOnTop="0" name="노면상태"/>
    <field labelOnTop="0" name="녹색신호시간"/>
    <field labelOnTop="0" name="데이터기준일자"/>
    <field labelOnTop="0" name="도로명"/>
    <field labelOnTop="0" name="도로형태"/>
    <field labelOnTop="0" name="법규위반"/>
    <field labelOnTop="0" name="보도턱낮춤여부"/>
    <field labelOnTop="0" name="보행자신호등유무"/>
    <field labelOnTop="0" name="보행자작동신호기유무"/>
    <field labelOnTop="0" name="부상신고자수"/>
    <field labelOnTop="0" name="사고날짜"/>
    <field labelOnTop="0" name="사고내용"/>
    <field labelOnTop="0" name="사고번호"/>
    <field labelOnTop="0" name="사고유형"/>
    <field labelOnTop="0" name="사고일시"/>
    <field labelOnTop="0" name="사망자수"/>
    <field labelOnTop="0" name="소재지도로명주소"/>
    <field labelOnTop="0" name="소재지지번주소"/>
    <field labelOnTop="0" name="속도"/>
    <field labelOnTop="0" name="시군구"/>
    <field labelOnTop="0" name="시군구명"/>
    <field labelOnTop="0" name="시도명"/>
    <field labelOnTop="0" name="요일"/>
    <field labelOnTop="0" name="위도"/>
    <field labelOnTop="0" name="음향신호기설치여부"/>
    <field labelOnTop="0" name="자전거횡단도겸용여부"/>
    <field labelOnTop="0" name="적색신호시간"/>
    <field labelOnTop="0" name="점자블록유무"/>
    <field labelOnTop="0" name="제공기관명"/>
    <field labelOnTop="0" name="제공기관코드"/>
    <field labelOnTop="0" name="중상자수"/>
    <field labelOnTop="0" name="지점"/>
    <field labelOnTop="0" name="집중조명시설유무"/>
    <field labelOnTop="0" name="차로수"/>
    <field labelOnTop="0" name="최고기온(℃)"/>
    <field labelOnTop="0" name="최저기온(℃)"/>
    <field labelOnTop="0" name="평균기온(℃)"/>
    <field labelOnTop="0" name="피해운전자.상해정도"/>
    <field labelOnTop="0" name="피해운전자.성별"/>
    <field labelOnTop="0" name="피해운전자.연령"/>
    <field labelOnTop="0" name="피해운전자.차종"/>
    <field labelOnTop="0" name="횡단보도관리번호"/>
    <field labelOnTop="0" name="횡단보도연장"/>
    <field labelOnTop="0" name="횡단보도종류"/>
    <field labelOnTop="0" name="횡단보도폭"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"사고날짜"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>

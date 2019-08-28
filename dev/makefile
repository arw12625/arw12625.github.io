BUILD_DIR = build
SOURCE_DIR = .

HTML_DIR = .
STYLES_DIR = styles
SCRIPTS_DIR = scripts
IMAGES_DIR = images

HTML_OBJECTS = $(addprefix $(BUILD_DIR)/$(HTML_DIR)/, index.html)
SYTLE_OBJECTS = $(addprefix $(BUILD_DIR)/$(STYLES_DIR)/, style.css)
SCRIPT_OBJECTS = $(patsubst $(SOURCE_DIR)/$(SCRIPTS_DIR)/%.js,$(BUILD_DIR)/$(SCRIPTS_DIR)/%.js, \
					$(wildcard $(SOURCE_DIR)/$(SCRIPTS_DIR)/*.js))
IMAGE_OBJECTS = $(patsubst $(SOURCE_DIR)/$(IMAGES_DIR)/%,$(BUILD_DIR)/$(IMAGES_DIR)/%, \
					$(wildcard $(SOURCE_DIR)/$(IMAGES_DIR)/*))

.PHONY: website, clean

website : $(HTML_OBJECTS) $(SYTLE_OBJECTS) $(SCRIPT_OBJECTS) $(IMAGE_OBJECTS)

$(BUILD_DIR)/$(HTML_DIR)/%.html : $(SOURCE_DIR)/$(HTML_DIR)/%.html
	copy $(subst /,\,$<) $(subst /,\,$(BUILD_DIR)/$(HTML_DIR))

$(BUILD_DIR)/$(STYLES_DIR)/%.css : $(SOURCE_DIR)/$(STYLES_DIR)/%.scss
	sass $< $@

$(BUILD_DIR)/$(IMAGES_DIR)/% : $(SOURCE_DIR)/$(IMAGES_DIR)/%
	copy $(subst /,\,$<) $(subst /,\,$(BUILD_DIR)/$(IMAGES_DIR))

$(BUILD_DIR)/$(SCRIPTS_DIR)/%.js : $(SOURCE_DIR)/$(SCRIPTS_DIR)/%.js
	copy $(subst /,\,$<) $(subst /,\,$(BUILD_DIR)/$(SCRIPTS_DIR))

clean:
	del /q /s build\*

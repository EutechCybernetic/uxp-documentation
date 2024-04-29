---
layout:
  title:
    visible: true
  description:
    visible: false
  tableOfContents:
    visible: false
  outline:
    visible: false
  pagination:
    visible: false
---

# Releases

User Experience Portal (UXP) is a robust visualization tool crafted to innovate dashboard creation and customization. UXP equips developers with a wide list of reusable components and functionalities, enabling them to effortlessly construct dynamic widgets and visualizations in mere minutes.



{% hint style="info" %}
[UXP is rapidly evolving with numerous new features and enhancements being introduced daily. To streamline our development process, we are transitioning to proper versioning. We will discontinue updates to the old versions (master, dev, experimental) but will continue to provide support for these versions. We highly recommend using the compatible versions instead of the older ones. For users of the master version (and dev), please switch to the latest from version one (v1), and for those using experimental, please switch to the latest from version two (v2).](#user-content-fn-1)[^1]
{% endhint %}





<details>

<summary>v2.0.0</summary>





**UXP - Version 2.0.0 Release Notes**

We are delighted to unveil UXP (User Experience Portal) version 2.0.0, introducing a host of exciting enhancements and features to elevate dashboard creation and customization to new heights. This release reflects our dedication to providing developers with cutting-edge tools and capabilities to craft exceptional user experiences.

**Key Enhancements:**

1. **Revamped Dashboard Layout**: Version 2.0.0 brings a revamped dashboard layout, enhancing the overall user interface and improving usability. The new layout offers a more intuitive and visually appealing experience, empowering users to navigate and interact with dashboards effortlessly.
2. **FontAwesome Icons Integration**: In this release, UXP introduces integration with FontAwesome icons, expanding the library of available icons for users to enhance the visual representation of their dashboards and widgets.
3. **Improved Widget Drawer**: The widget drawer receives a significant overhaul in version 2.0.0, introducing a sleeker and more user-friendly interface. Users can now access and manage widgets more efficiently, with improved organization and navigation features.
4. **UI Improvements and Add-Ons**: This release introduces a series of UI improvements, including enhanced categorization and pre-built widgets ready for installation and use. The introduction of categories and pre-built widgets streamlines the widget selection process, enabling users to quickly find and add widgets to their dashboards.
5. **Theming Support**: Version 2.0.0 introduces theming support, allowing users to customize the look and feel of their dashboards. While still in its early stages, theming provides users with the flexibility to tailor dashboards to their preferences, with further enhancements planned for future releases.

**New Components:**

* UserProfile
* ColorPallet
* AutoCompleteInput
* TextArea
* FileInput
* SampleDataLabel
* LocalizationForm
* LocalizationFormModal
* DynamicForm
* BuyOnSpaceworxButton
* SpaceworxDescriptionTag

**New Hooks:**

* useAlert
* useDebounce

**List of Changes in Version 2.0.0:**

* Revamped dashboard layout for improved usability and visual appeal.
* Integration with FontAwesome icons to expand icon library options.
* Overhauled widget drawer for enhanced organization and navigation.
* UI improvements, including categorization and pre-built widgets for streamlined widget selection.
* Introduction of theming support for customizing dashboard appearance (early stage implementation).

With these enhancements, UXP version 2.0.0 empowers developers and users alike to create and interact with dashboards that are not only functional but also visually stunning and tailored to their specific needs. We look forward to seeing the innovative solutions our community will create with these new features.

Thank you for your continued support and feedback as we strive to make UXP the premier dashboarding tool for developers and users everywhere.

***

Let me know if you need further adjustments or additions!

</details>

<details>

<summary>v1.0.0</summary>

## Release Note

We are excited to announce the launch of User Experience Portal (UXP) is a robust visualization tool crafted to innovate dashboard creation and customization. UXP equips developers with a wide list of reusable components and functionalities, enabling them to effortlessly construct dynamic widgets and visualizations in mere minutes.

### Key Features:

* **Reusable Components:** UXP provides a rich library of reusable components and functionalities, giving developers a robust framework to craft customizable widgets and visualizations tailored to their precise requirements.
* **Flexible Widget Building:** With UXP, developers can effortlessly construct widgets and sidebar links that seamlessly integrate into dashboards. Moreover, the platform offers the versatility to design custom interfaces, enabling developers to deliver distinctive user experiences.
* **Third-Party Library Integration:** UXP empowers developers to harness any custom third-party libraries to enrich their visualizations and expand functionality, unlocking boundless opportunities for innovation and creativity.

### Components, hooks, and functions

UXP provides an extensive range of components and hooks to cater to various needs, including:

#### Components:

* PortalContainer
* Tooltip
* DropDownButton
* Popover
* Modal
* ModalWizard
* FilterPanel
* Wizard
* FormField
* FormFeedback
* Label
* Input
* Checkbox
* Select
* MultiSelect
* DynamicSelect
* DatePicker
* DateRangePicker
* TimePicker
* TimeRangePicker
* DateTimePicker
* SearchBox
* CalendarComponent
* ColorPicker
* TitleBar
* LinkWidgetContainer
* Loading
* NotificationBlock
* ToggleFilter
* ProfileImage
* DataList
* DataTable
* DataGrid
* HorizontalScrollList
* ItemCard
* ItemListCard
* WidgetWrapper
* MapComponent
* Button
* AsyncButton
* IconButton
* ConfirmButton
* LinkButtonWidget
* DefaultLoader
* BarChartLoader
* DonutChartLoader
* GaugeLoader
* HeatmapChartLoader
* PieChartComponent
* TrendChartComponent
* RadialGauge

#### Hooks:

* useToast
* useMessageBus
* useFields
* useResizeEffect
* useUpdateWidgetProps
* useEffectWithPolling
* useEventSubscriber

#### Functions:

* eventDispatcher

This comprehensive collection empowers developers to create versatile and feature-rich user experiences within the UXP framework.

### UXP Context:

Within the UXP context, developers gain access to essential functions and variables facilitating seamless integration and customization. These include:

* **executeAction:** Executes any Lucy model action.
* **executeService:** Executes any services in Lucy
* **executeRenderUI:** Enables rendering of custom UI within any widget, offering flexibility in designing user interfaces tailored to specific needs.
* **lucyUrl:** Stores the URL of the Lucy instance where the dashboard or interface is hosted, ensuring smooth communication with the Lucy platform.
* **apiKey:** Stores the API key of the Lucy instance, granting authorized access to UXP functionalities and services.
* **userKey:** Represents the current logged-in user's user key, providing personalized access and authentication within the UXP environment.

With its robust feature set and flexibility, UXP empowers developers to craft captivating dashboards and visualizations, enhancing user experiences to new heights. We eagerly anticipate the innovative solutions our community will create using UXP.

</details>

[^1]: 

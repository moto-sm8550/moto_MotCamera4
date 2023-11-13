.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.kt"

# interfaces
.implements Lcom/motorola/camera/utility/LensApiHelper$StatusCheckCallback;


# instance fields
.field public final synthetic $category:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

.field public final synthetic $lensApiHelper:Lcom/motorola/camera/utility/LensApiHelper;

.field public final synthetic $preference:Landroidx/preference/Preference;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/LensApiHelper;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->$lensApiHelper:Lcom/motorola/camera/utility/LensApiHelper;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->$preference:Landroidx/preference/Preference;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->$category:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChecked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->$lensApiHelper:Lcom/motorola/camera/utility/LensApiHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->$preference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$checkGoogleLensPreference$1;->$category:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V

    :cond_0
    return-void
.end method

.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.kt"

# interfaces
.implements Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory$DropDownPreferenceCategoryListener;


# instance fields
.field public final synthetic $this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->$this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCollapseFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->scrollToEnd()V

    return-void
.end method

.method public final onExpandFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->scrollToEnd()V

    return-void
.end method

.method public final scrollToEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->$this_apply:Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$configSettings$2$1;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v0, v1}, Lcom/motorola/patternlibrary/api/DropDownPreferenceCategory;->getPreferenceList(Landroidx/preference/Preference;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Landroidx/preference/PreferenceFragmentCompat$3;

    invoke-direct {v1, p0, v0}, Landroidx/preference/PreferenceFragmentCompat$3;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)V

    .line 6
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Landroidx/preference/PreferenceFragmentCompat$3;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat$3;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$2:Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "<anonymous parameter 0>"

    .line 1
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p2, Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object v2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v3, v0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 5
    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    if-eqz v0, :cond_3

    .line 7
    iget-boolean p0, v0, Landroidx/preference/Preference;->mVisible:Z

    if-ne p0, v4, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->highlightAnimation()V

    goto :goto_5

    :cond_4
    if-eqz v1, :cond_b

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;->highlight()V

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    .line 10
    iget-object p2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object p2, p1

    :goto_3
    if-eqz p0, :cond_7

    .line 11
    iget-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 12
    :cond_7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-nez p0, :cond_8

    goto :goto_4

    .line 13
    :cond_8
    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_4
    if-eqz p0, :cond_9

    .line 14
    iget-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    if-ne p1, v4, :cond_9

    move v3, v4

    :cond_9
    if-eqz v3, :cond_a

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->highlightAnimation()V

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    .line 16
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;->highlight()V

    :cond_b
    :goto_5
    return-void
.end method

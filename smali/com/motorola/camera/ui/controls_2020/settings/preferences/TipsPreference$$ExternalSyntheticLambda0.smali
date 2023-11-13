.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/patternlibrary/api/MotoCardView;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;

.field public final synthetic f$2:Lcom/motorola/camera/ai/model/TipsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/patternlibrary/api/MotoCardView;Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;Lcom/motorola/camera/ai/model/TipsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/patternlibrary/api/MotoCardView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ai/model/TipsModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/patternlibrary/api/MotoCardView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ai/model/TipsModel;

    const-string v1, "$cardView"

    .line 1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$tipModel"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->GONE:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {p1, v1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 3
    iget-object p1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ai/model/TipsModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 5
    invoke-interface {p1, v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;
.super Landroidx/preference/Preference;
.source "TipsPreference.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTipsPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipsPreference.kt\ncom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,125:1\n3785#2:126\n4300#2,2:127\n*S KotlinDebug\n*F\n+ 1 TipsPreference.kt\ncom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference\n*L\n48#1:126\n48#1:127,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;",
        "Landroidx/preference/Preference;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "MotCamera4-v9.0.50.15_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public dropDownGalleryView:Lcom/motorola/patternlibrary/api/DropDownGalleryView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f0403b8

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0169

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;->dropDownGalleryView:Lcom/motorola/patternlibrary/api/DropDownGalleryView;

    if-eqz p1, :cond_9

    .line 4
    invoke-virtual {p1}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->getMotoCardViews()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_8

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {}, Lcom/motorola/camera/ai/model/TipsModel;->values()[Lcom/motorola/camera/ai/model/TipsModel;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 10
    iget-object v8, v7, Lcom/motorola/camera/ai/model/TipsModel;->isFeatureSupported:Lkotlin/jvm/functions/Function0;

    .line 11
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const v3, 0x7f0a02e2

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v5, 0x43340000    # 180.0f

    .line 14
    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 15
    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    .line 16
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    move v6, v5

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ai/model/TipsModel;

    .line 17
    new-instance v8, Lcom/motorola/patternlibrary/api/MotoCardView;

    .line 18
    iget-object v9, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {v8, v9}, Lcom/motorola/patternlibrary/api/MotoCardView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v6, v9, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v1

    .line 21
    :goto_4
    iget v10, v7, Lcom/motorola/camera/ai/model/TipsModel;->title:I

    .line 22
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/motorola/patternlibrary/api/MotoCardView;->setHeadlineText(Ljava/lang/String;)V

    .line 23
    iget v10, v7, Lcom/motorola/camera/ai/model/TipsModel;->description:I

    .line 24
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/motorola/patternlibrary/api/MotoCardView;->setSummary(Ljava/lang/String;)V

    .line 25
    iget v10, v7, Lcom/motorola/camera/ai/model/TipsModel;->imgDrawable:I

    .line 26
    invoke-virtual {v8, v10}, Lcom/motorola/patternlibrary/api/MotoCardView;->setIconResource(I)V

    const v10, 0x7f110250

    .line 27
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonText(Ljava/lang/String;)V

    .line 28
    new-instance v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8, p0, v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/patternlibrary/api/MotoCardView;Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;Lcom/motorola/camera/ai/model/TipsModel;)V

    invoke-virtual {v8, v10}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v7, v7, Lcom/motorola/camera/ai/model/TipsModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 30
    invoke-virtual {p0, v7, v8}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference;->updateButtonVisibility(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/patternlibrary/api/MotoCardView;)V

    if-eqz v9, :cond_6

    const v7, 0x7f110215

    goto :goto_5

    :cond_6
    const v7, 0x7f11022f

    .line 31
    :goto_5
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/motorola/patternlibrary/api/MotoCardView;->setPositiveButtonText(Ljava/lang/String;)V

    .line 32
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;

    invoke-direct {v7, v9, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/TipsPreference$$ExternalSyntheticLambda1;-><init>(ZLcom/motorola/patternlibrary/api/DropDownGalleryView;)V

    invoke-virtual {v8, v7}, Lcom/motorola/patternlibrary/api/MotoCardView;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 34
    :cond_7
    invoke-virtual {p1, v2}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setMotoCardViews(Ljava/util/ArrayList;)V

    .line 35
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setListener(Lcom/motorola/patternlibrary/api/GalleryView$PageListener;)V

    .line 36
    :cond_8
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_TO_SHOW_QUANTITY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 37
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.TIPS_TO_SHOW_QUANTITY).value"

    .line 38
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setCurrentPage(I)V

    .line 39
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->TIPS_UNREAD_BADGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 40
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 41
    check-cast p0, Ljava/lang/Integer;

    const-string v0, "badgeCount"

    .line 42
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/motorola/patternlibrary/api/DropDownGalleryView;->setBadgeIndicator(I)V

    :cond_9
    return-void
.end method

.method public final updateButtonVisibility(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/patternlibrary/api/MotoCardView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/motorola/patternlibrary/api/MotoCardView;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->GONE:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(it).value"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;->VISIBLE:Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;

    invoke-virtual {p2, p1}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    .line 7
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p2, p0}, Lcom/motorola/patternlibrary/api/MotoCardView;->setNegativeButtonVisibility(Lcom/motorola/patternlibrary/api/MotoCardView$Visibility;)V

    :cond_2
    return-void
.end method

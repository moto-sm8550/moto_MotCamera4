.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LevelerTooltip"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    new-instance v3, Landroid/util/SizeF;

    const/high16 p1, 0x43700000    # 240.0f

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-direct {v3, p1, v0}, Landroid/util/SizeF;-><init>(FF)V

    const v1, 0x7f110538

    const v2, 0x7f1100fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(IILandroid/util/SizeF;ZZZ)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 2
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public final markDismissed()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    const-string p0, "IS_SELECTED"

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/16 v3, 0x13

    if-ne v0, v3, :cond_3

    if-ne v2, v4, :cond_3

    .line 8
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    .line 9
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showTutorial()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v4

    :cond_4
    return v1
.end method

.method public final updateDisplay(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->updateDisplay()V

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 4
    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    .line 5
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x41a00000    # 20.0f

    .line 6
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq p3, v4, :cond_1

    if-ne p3, v3, :cond_2

    .line 7
    :cond_1
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getFontScale()F

    move-result v5

    const v6, 0x3fa66666

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/motorola/camera/ui/widgets/gl/iRenderer;->getSurfaceDensity()F

    move-result p1

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/high16 v5, 0x40580000    # 3.375f

    cmpl-float p1, p1, v5

    if-nez p1, :cond_2

    const/high16 p1, 0x42b40000    # 90.0f

    sub-float/2addr v2, p1

    :cond_2
    const/4 p1, 0x0

    if-eqz p3, :cond_6

    if-eq p3, v4, :cond_5

    const/16 v4, 0xb4

    if-eq p3, v4, :cond_4

    if-eq p3, v3, :cond_3

    move v3, p1

    move v4, v3

    goto :goto_2

    :cond_3
    div-float v3, v1, v0

    add-float/2addr v3, p1

    .line 9
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr v4, v3

    add-float/2addr v4, v2

    goto :goto_0

    :cond_4
    div-float v3, v1, v0

    sub-float v3, p2, v3

    .line 10
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    sub-float/2addr v3, v2

    goto :goto_1

    :cond_5
    div-float v3, v1, v0

    sub-float v3, p1, v3

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    sub-float v4, v3, v2

    :goto_0
    move v3, p2

    goto :goto_2

    :cond_6
    div-float v3, v1, v0

    add-float/2addr v3, p2

    .line 12
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr v4, v3

    add-float v3, v4, v2

    :goto_1
    move v4, p1

    :goto_2
    const/4 v5, 0x4

    .line 13
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    .line 14
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    invoke-static {v5}, Landroidx/room/RoomMasterTable;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez p3, :cond_7

    div-float/2addr v1, v0

    sub-float/2addr p2, v1

    .line 15
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p3, p3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p3, p3

    div-float/2addr p3, v0

    sub-float/2addr p2, p3

    sub-float v3, p2, v2

    const/4 p2, 0x2

    .line 16
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    .line 17
    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v4, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method

.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem$Companion$DIFF_UTIL$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "ControlBarSettingItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 2
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->value:Ljava/lang/Object;

    iget-object v0, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->value:Ljava/lang/Object;

    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    iget p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->icon:I

    iget v0, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->icon:I

    if-ne p0, v0, :cond_0

    .line 5
    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isOn:Z

    iget-boolean v0, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isOn:Z

    if-ne p0, v0, :cond_0

    .line 6
    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->autoTrigger:Z

    iget-boolean v0, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->autoTrigger:Z

    if-ne p0, v0, :cond_0

    .line 7
    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->locked:Z

    iget-boolean v0, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->locked:Z

    if-ne p0, v0, :cond_0

    .line 8
    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->multiValuesEnabled:Z

    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->multiValuesEnabled:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 2
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 4
    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

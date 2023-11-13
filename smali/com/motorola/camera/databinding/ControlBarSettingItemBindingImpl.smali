.class public final Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;
.super Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;
.source "ControlBarSettingItemBindingImpl.java"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# instance fields
.field public final mCallback3:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView1:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, v0, p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object v0, v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0139

    .line 8
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    new-instance p2, Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Lcom/motorola/camera/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mCallback3:Lcom/motorola/camera/generated/callback/OnClickListener;

    .line 10
    monitor-enter p0

    const-wide/16 p1, 0x8

    .line 11
    :try_start_0
    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;->onClick(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final executeBindings()V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0xd

    and-long/2addr v8, v0

    cmp-long v8, v8, v2

    const-wide/16 v9, 0x9

    if-eqz v8, :cond_2

    and-long v11, v0, v9

    cmp-long v11, v11, v2

    if-eqz v11, :cond_0

    if-eqz v4, :cond_0

    .line 6
    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->icon:I

    .line 7
    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->description:Ljava/lang/String;

    :cond_0
    if-eqz v4, :cond_2

    .line 8
    iget-object v6, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 9
    iget-boolean v4, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->locked:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0700a6

    goto :goto_0

    :cond_1
    const v4, 0x7f0700a7

    .line 10
    :goto_0
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    :cond_2
    and-long/2addr v9, v0

    cmp-long v4, v9, v2

    if-eqz v4, :cond_3

    .line 11
    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    const-string v9, "button"

    .line 12
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    sget v4, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    .line 15
    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mCallback3:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v8, :cond_5

    .line 17
    sget v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 18
    iget-object p0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {p0, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFieldChange(ILjava/lang/Object;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 1
    :cond_0
    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const/4 p1, 0x1

    if-nez p3, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0

    :goto_0
    move v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    if-ne p3, p1, :cond_2

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    .line 7
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return v0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 1
    check-cast p2, Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, v1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 9
    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 10
    sget-object p1, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/ViewDataBinding$1;

    invoke-virtual {p0, v0, p2, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    .line 11
    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    .line 12
    monitor-enter p0

    .line 13
    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;->mDirtyFlags:J

    .line 14
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-virtual {p0, v1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 16
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_1
    return v0
.end method

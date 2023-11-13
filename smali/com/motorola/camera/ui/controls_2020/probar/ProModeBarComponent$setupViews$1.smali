.class public final Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;
.super Ljava/lang/Object;
.source "ProModeBarComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 5
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 7
    :goto_0
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 9
    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    .line 10
    invoke-static {v4, v5}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 14
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 15
    sget-object v5, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    .line 17
    :goto_4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_5

    :cond_6
    move-object v0, v3

    :goto_5
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_7

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    goto :goto_6

    :cond_7
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 19
    iget-wide v5, v5, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    .line 20
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;->getAutoExposureTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 22
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 24
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    .line 25
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_a

    goto :goto_8

    :cond_a
    const/4 v4, 0x3

    .line 27
    :goto_8
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_9

    :cond_b
    move-object v0, v3

    :goto_9
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_c

    .line 28
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    :cond_c
    if-nez v3, :cond_d

    goto :goto_a

    :cond_d
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 29
    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    .line 30
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;->getAutoISO(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_e
    :goto_a
    sget v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-void

    .line 32
    :cond_f
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    .line 33
    sget v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 35
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 36
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 37
    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 38
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 39
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 41
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-nez v2, :cond_10

    goto :goto_b

    .line 42
    :cond_10
    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    .line 43
    invoke-static {v1, v3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_11
    :goto_b
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 45
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 46
    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 47
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 48
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 49
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 50
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-nez v2, :cond_12

    goto :goto_c

    .line 51
    :cond_12
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    .line 52
    iget-wide v4, v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    .line 53
    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;->getAutoExposureTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_13
    :goto_c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 55
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 57
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$setupViews$1;->this$0:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    .line 59
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-nez v0, :cond_14

    goto :goto_d

    .line 60
    :cond_14
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;

    .line 61
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    .line 62
    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent$Companion;->getAutoISO(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_d
    return-void
.end method

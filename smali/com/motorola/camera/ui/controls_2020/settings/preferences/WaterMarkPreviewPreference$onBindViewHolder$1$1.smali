.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;
.super Ljava/lang/Object;
.source "WaterMarkPreviewPreference.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $leftInd:Landroid/widget/ImageView;

.field public final synthetic $rightInd:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;->$leftInd:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;->$rightInd:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IF)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    const v0, 0x7f080307

    const v1, 0x7f080308

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;->$leftInd:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;->$rightInd:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;->$leftInd:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$onBindViewHolder$1$1;->$rightInd:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

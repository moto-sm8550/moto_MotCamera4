.class public final Lcom/motorola/camera/ui/widgets/AlertPopup$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "AlertPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/AlertPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field public final mLinkColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$URLSpanNoUnderline;->mLinkColor:I

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 3
    iget p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$URLSpanNoUnderline;->mLinkColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.class public Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;
.super Landroid/webkit/WebView;
.source "OnlineHelpWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;
    }
.end annotation


# instance fields
.field public mTouchCallback:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;->mTouchCallback:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;->onTouchEvent()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setTouchCallback(Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;->mTouchCallback:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView$OnTouchCallback;

    return-void
.end method

.class public final Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;
.super Landroid/webkit/WebView;
.source "WebViewSubtitleOutput.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x0

    return p0
.end method

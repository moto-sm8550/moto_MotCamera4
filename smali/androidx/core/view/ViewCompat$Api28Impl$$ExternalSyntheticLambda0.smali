.class public final synthetic Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ViewCompat$Api28Impl$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {p0}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent()Z

    move-result p0

    return p0
.end method

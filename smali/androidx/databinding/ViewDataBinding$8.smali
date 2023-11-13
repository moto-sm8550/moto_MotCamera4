.class public final Landroidx/databinding/ViewDataBinding$8;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Landroidx/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$8;->this$0:Landroidx/databinding/ViewDataBinding;

    .line 2
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Landroidx/databinding/ViewDataBinding$7;

    .line 3
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$7;->run()V

    return-void
.end method

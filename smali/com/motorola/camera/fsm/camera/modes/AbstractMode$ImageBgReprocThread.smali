.class public final Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;
.super Landroid/os/HandlerThread;
.source "AbstractMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBgReprocThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread$LazyLoader;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ImageBgReprocHandler"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final quit()Z
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result p0

    return p0
.end method

.method public final quitSafely()Z
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result p0

    return p0
.end method

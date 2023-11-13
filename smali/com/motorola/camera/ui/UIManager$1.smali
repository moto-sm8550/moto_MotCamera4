.class public final Lcom/motorola/camera/ui/UIManager$1;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/UIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/UIManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager$1;->this$0:Lcom/motorola/camera/ui/UIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/UIManager$1;->this$0:Lcom/motorola/camera/ui/UIManager;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$1;->this$0:Lcom/motorola/camera/ui/UIManager;

    .line 3
    iget v1, p0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    .line 4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

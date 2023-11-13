.class public final Lcom/motorola/camera/mcf/Mcf$2;
.super Ljava/lang/Object;
.source "Mcf.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/mcf/Mcf;->postFullFrameEventFromNative(IIIIIIIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$arg2:I

.field public final synthetic val$arg3:I

.field public final synthetic val$arg6:I

.field public final synthetic val$obj1:Ljava/lang/Object;

.field public final synthetic val$obj2:Ljava/lang/Object;

.field public final synthetic val$obj3:Ljava/lang/Object;

.field public final synthetic val$obj4:Ljava/lang/Object;

.field public final synthetic val$obj5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj4:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg2:I

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg3:I

    iput p4, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg6:I

    iput-object p5, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj5:Ljava/lang/Object;

    iput-object p6, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj1:Ljava/lang/Object;

    iput-object p7, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj2:Ljava/lang/Object;

    iput-object p8, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$800()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$900(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for full frame event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$800()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$900(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$800()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$1000(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$800()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->access$1100(Lcom/motorola/camera/mcf/Mcf;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 7
    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg2:I

    .line 8
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->values()[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 9
    iget v6, v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->mIntValue:I

    if-ne v6, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received invalid FrameTarget int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->INVALID:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    move-object v5, v0

    .line 12
    :goto_1
    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg3:I

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v6

    .line 13
    iget v4, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$arg6:I

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj4:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj5:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$2;->val$obj3:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-interface/range {v1 .. v9}, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;->onReprocessRequest(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/camera/mcf/Mcf$FrameTarget;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 15
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postFullFrameEventFromNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

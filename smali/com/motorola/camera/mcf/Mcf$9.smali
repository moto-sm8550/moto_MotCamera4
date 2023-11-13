.class public final Lcom/motorola/camera/mcf/Mcf$9;
.super Ljava/lang/Object;
.source "Mcf.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/mcf/Mcf;->postControlEventFromNative(IIIILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$arg1:I

.field public final synthetic val$obj1:Ljava/lang/Object;

.field public final synthetic val$obj2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$800()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$1400(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for control event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$800()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$1400(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnControlListener;

    if-eqz v0, :cond_7

    .line 4
    iget v1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    .line 5
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->INVALID:Lcom/motorola/camera/mcf/Mcf$RateControl;

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 6
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown RateControl input : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->SMART:Lcom/motorola/camera/mcf/Mcf$RateControl;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->SKIP_3:Lcom/motorola/camera/mcf/Mcf$RateControl;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->SKIP_2:Lcom/motorola/camera/mcf/Mcf$RateControl;

    goto :goto_0

    .line 10
    :cond_4
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->SKIP_1:Lcom/motorola/camera/mcf/Mcf$RateControl;

    goto :goto_0

    .line 11
    :cond_5
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->NO_SKIP:Lcom/motorola/camera/mcf/Mcf$RateControl;

    goto :goto_0

    .line 12
    :cond_6
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$RateControl;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$RateControl;

    .line 13
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-interface {v0, v1, v2, p0}, Lcom/motorola/camera/mcf/Mcf$OnControlListener;->onFullFrameConfig(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$RateControl;Lcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postControlEventFromNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

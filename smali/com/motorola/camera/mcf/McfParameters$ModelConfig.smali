.class public final Lcom/motorola/camera/mcf/McfParameters$ModelConfig;
.super Ljava/lang/Object;
.source "McfParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelConfig"
.end annotation


# instance fields
.field public mode:I

.field public model:Lcom/motorola/camera/shared/ai/model/McfMlModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/ai/model/McfMlModel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->model:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 3
    iput p2, p0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->mode:I

    return-void
.end method

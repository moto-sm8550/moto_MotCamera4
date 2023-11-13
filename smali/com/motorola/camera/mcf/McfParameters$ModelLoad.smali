.class public final Lcom/motorola/camera/mcf/McfParameters$ModelLoad;
.super Ljava/lang/Object;
.source "McfParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelLoad"
.end annotation


# instance fields
.field public model:Lcom/motorola/camera/shared/ai/model/McfMlModel;

.field public modelResources:[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/mcf/McfParameters$ModelLoad;->model:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/mcf/McfParameters$ModelLoad;->modelResources:[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    return-void
.end method

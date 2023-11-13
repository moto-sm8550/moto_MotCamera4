.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;
.super Ljava/lang/Object;
.source "McfJsonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$1;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig$LazyLoader;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;

    return-void
.end method

.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;->INSTANCE:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda6;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$9xt4zPzn7VAZRH5SxDE_t0DEMWU(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

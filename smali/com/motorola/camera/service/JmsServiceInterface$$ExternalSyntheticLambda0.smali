.class public final synthetic Lcom/motorola/camera/service/JmsServiceInterface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/service/JmsServiceInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/service/JmsServiceInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/service/JmsServiceInterface;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/service/JmsServiceInterface;

    invoke-virtual {p0}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMS()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

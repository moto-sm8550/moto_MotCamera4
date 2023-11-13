.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$Job;
.super Ljava/lang/Object;
.source "JobDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/service/jms/JobDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Job"
.end annotation


# instance fields
.field public mCancelPending:Z

.field public final stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

.field public final transaction:Lcom/motorola/camera/background/service/jms/Transaction;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/Transaction;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->transaction:Lcom/motorola/camera/background/service/jms/Transaction;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    return-void
.end method

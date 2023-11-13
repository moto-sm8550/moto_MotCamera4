.class public final synthetic Lcom/google/firebase/components/Component$$Lambda$2;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final arg$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/Component$$Lambda$2;->arg$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Landroidx/arch/core/executor/TaskExecutor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/Component$$Lambda$2;->arg$1:Ljava/lang/Object;

    return-object p0
.end method

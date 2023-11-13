.class public final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final arg$1:Lcom/google/firebase/components/ComponentRuntime;

.field public final arg$2:Lcom/google/firebase/components/Component;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$1:Lcom/google/firebase/components/ComponentRuntime;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$2:Lcom/google/firebase/components/Component;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$1:Lcom/google/firebase/components/ComponentRuntime;

    iget-object p0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$2:Lcom/google/firebase/components/Component;

    sget v1, Lcom/google/firebase/components/ComponentRuntime;->$r8$clinit:I

    .line 1
    iget-object v1, p0, Lcom/google/firebase/components/Component;->factory:Lcom/google/firebase/components/ComponentFactory;

    .line 2
    new-instance v2, Lcom/google/firebase/components/RestrictedComponentContainer;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;-><init>(Lcom/google/firebase/components/Component;Landroidx/arch/core/executor/TaskExecutor;)V

    .line 3
    invoke-interface {v1, v2}, Lcom/google/firebase/components/ComponentFactory;->create(Landroidx/arch/core/executor/TaskExecutor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final arg$1:Lcom/google/firebase/components/LazySet;

.field public final arg$2:Lcom/google/firebase/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/LazySet;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->arg$1:Lcom/google/firebase/components/LazySet;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->arg$2:Lcom/google/firebase/inject/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->arg$1:Lcom/google/firebase/components/LazySet;

    iget-object p0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$4;->arg$2:Lcom/google/firebase/inject/Provider;

    sget v1, Lcom/google/firebase/components/ComponentRuntime;->$r8$clinit:I

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.class public final Lcom/google/firebase/components/RestrictedComponentContainer;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "RestrictedComponentContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;
    }
.end annotation


# instance fields
.field public final allowedDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final allowedProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final allowedPublishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final allowedSetDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final allowedSetProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final delegateContainer:Landroidx/arch/core/executor/TaskExecutor;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/Component;Landroidx/arch/core/executor/TaskExecutor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/Component<",
            "*>;",
            "Landroidx/arch/core/executor/TaskExecutor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/arch/core/executor/TaskExecutor;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 7
    iget-object v6, p1, Lcom/google/firebase/components/Component;->dependencies:Ljava/util/Set;

    .line 8
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/components/Dependency;

    .line 9
    iget v8, v7, Lcom/google/firebase/components/Dependency;->injection:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_0

    move v11, v9

    goto :goto_1

    :cond_0
    move v11, v10

    :goto_1
    if-eqz v11, :cond_2

    .line 10
    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    iget-object v7, v7, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 12
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v7, v7, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 14
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne v8, v0, :cond_3

    goto :goto_2

    :cond_3
    move v9, v10

    :goto_2
    if-eqz v9, :cond_4

    .line 15
    iget-object v7, v7, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 16
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 18
    iget-object v7, v7, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 19
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_5
    iget-object v7, v7, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 21
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_6
    iget-object v0, p1, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 24
    const-class v0, Lcom/google/firebase/events/Publisher;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDirectInterfaces:Ljava/util/Set;

    .line 26
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedProviderInterfaces:Ljava/util/Set;

    .line 27
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 28
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetDirectInterfaces:Ljava/util/Set;

    .line 29
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetProviderInterfaces:Ljava/util/Set;

    .line 30
    iget-object p1, p1, Lcom/google/firebase/components/Component;->publishedEvents:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedPublishedEvents:Ljava/util/Set;

    .line 32
    iput-object p2, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Landroidx/arch/core/executor/TaskExecutor;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedDirectInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    const-class v0, Lcom/google/firebase/events/Publisher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;

    check-cast p0, Lcom/google/firebase/events/Publisher;

    invoke-direct {p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer$RestrictedPublisher;-><init>(Lcom/google/firebase/events/Publisher;)V

    return-object p1

    .line 5
    :cond_1
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency %s."

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedProviderInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency Provider<%s>."

    .line 4
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetDirectInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency Set<%s>."

    .line 4
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/firebase/inject/Provider<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->allowedSetProviderInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/firebase/components/RestrictedComponentContainer;->delegateContainer:Landroidx/arch/core/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/google/firebase/components/DependencyException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    .line 4
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

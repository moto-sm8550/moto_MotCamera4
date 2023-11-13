.class Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    invoke-interface {p1}, Landroidx/lifecycle/GeneratedAdapter;->callMethods()V

    .line 2
    iget-object p0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    invoke-interface {p0}, Landroidx/lifecycle/GeneratedAdapter;->callMethods()V

    return-void
.end method

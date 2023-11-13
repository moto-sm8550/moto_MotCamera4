.class public abstract Lcom/motorola/camera/fragments/ReportFragment;
.super Landroidx/fragment/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;,
        Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;,
        Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;,
        Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;,
        Lcom/motorola/camera/fragments/ReportFragment$DBOperations;,
        Lcom/motorola/camera/fragments/ReportFragment$DBOperationsRunnable;,
        Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;,
        Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;,
        Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mExpandableListView:Landroid/widget/ExpandableListView;

.field public final mHandler:Landroid/os/Handler;

.field public final mOpenGroupSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/fragments/ReportFragment;

    .line 2
    const-class v0, Lcom/motorola/camera/fragments/ReportFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/ReportFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;

    invoke-direct {v0}, Lcom/motorola/camera/fragments/ReportFragment$GetDataFromDBThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_1
    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$DBOperationsRunnable;

    invoke-direct {v0, p1}, Lcom/motorola/camera/fragments/ReportFragment$DBOperationsRunnable;-><init>(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error executing current measure runnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    return-void
.end method

.method public abstract getGroup()V
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0d0079

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a023d

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 3
    new-instance p3, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v0}, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a023c

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 5
    new-instance p3, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;

    invoke-direct {p3}, Lcom/motorola/camera/fragments/ReportFragment$ReportListChildClickListener;-><init>()V

    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 7
    new-instance p2, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    .line 8
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p3, "keytag"

    const-string v1, "keyvalue"

    .line 9
    filled-new-array {p3, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    filled-new-array {p3, v1}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [I

    fill-array-data v7, :array_1

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/content/Context;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    iput-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    .line 10
    sget-object p3, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda3;

    invoke-virtual {p2, p3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V

    .line 11
    iget-object p2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object p3, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 12
    new-instance p2, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;

    invoke-direct {p2, p0}, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    .line 13
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 14
    invoke-virtual {p2}, Lcom/motorola/camera/CameraApp;->getDebugReportPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 15
    iget-object p3, p0, Lcom/motorola/camera/fragments/ReportFragment;->TAG:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const p3, 0x7f0a023e

    .line 16
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    xor-int/lit8 p2, p2, 0x1

    .line 17
    invoke-virtual {p3, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 18
    new-instance p2, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fragments/ReportFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f0a03c2
        0x7f0a03c3
    .end array-data

    :array_1
    .array-data 4
        0x7f0a03c2
        0x7f0a03c3
    .end array-data
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    return-void
.end method

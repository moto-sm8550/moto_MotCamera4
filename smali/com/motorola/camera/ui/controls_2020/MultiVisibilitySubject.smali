.class public final Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;
.super Ljava/lang/Object;
.source "MultiVisibilitySubject.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiVisibilitySubject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiVisibilitySubject.kt\ncom/motorola/camera/ui/controls_2020/MultiVisibilitySubject\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1557#2:79\n1588#2,4:80\n1849#2,2:84\n1#3:86\n*S KotlinDebug\n*F\n+ 1 MultiVisibilitySubject.kt\ncom/motorola/camera/ui/controls_2020/MultiVisibilitySubject\n*L\n24#1:79\n24#1:80,4\n33#1:84,2\n*E\n"
.end annotation


# static fields
.field public static final CHANGE_CALLBACK_TRACE:Ljava/lang/String;


# instance fields
.field public final mainThreadHandler:Landroid/os/Handler;

.field public final visibilityChangeListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public visibilityNotifierListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/Notifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final visibilityNotifierTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/Notifier$TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public final visibleIndexes:Ljava/util/LinkedHashSet;
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
    .locals 2

    const-string v0, "MultiVisibilitySubject"

    const-string v1, ".onVisibilityChange()"

    .line 1
    invoke-static {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->CHANGE_CALLBACK_TRACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/motorola/camera/Notifier$TYPE;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "visibilityNotifierTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierTypes:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityChangeListener:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    .line 5
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/LinkedHashSet;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_0

    .line 8
    check-cast v1, Lcom/motorola/camera/Notifier$TYPE;

    .line 9
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;I)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;I)V

    invoke-static {v3, v4, v1}, Lcom/motorola/camera/utility/MarginUtil;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/Notifier$Listener;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    .line 11
    :cond_1
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final notifyVisibilityChange(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityChangeListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->CHANGE_CALLBACK_TRACE:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string p0, "MultiVisibilitySubject"

    const-string p1, "Error while calling visibility listener"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerListeners(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityNotifierTypes:Ljava/util/List;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 3
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/motorola/camera/Notifier$Listener;

    .line 5
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 6
    check-cast v0, Lcom/motorola/camera/Notifier$TYPE;

    .line 7
    invoke-static {p1, v1, v0}, Lcom/motorola/camera/utility/MarginUtil;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_0

    :cond_0
    return-void
.end method

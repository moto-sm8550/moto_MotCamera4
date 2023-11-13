.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;
.super Ljava/lang/Object;
.source "AppInfoCameraStatusListener.kt"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppInfoCameraStatusListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppInfoCameraStatusListener.kt\ncom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,51:1\n511#2:52\n496#2,6:53\n125#3:59\n152#3,3:60\n*S KotlinDebug\n*F\n+ 1 AppInfoCameraStatusListener.kt\ncom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener\n*L\n39#1:52\n39#1:53,6\n41#1:59\n41#1:60,3\n*E\n"
.end annotation


# instance fields
.field public final cachedCameraStatusHolder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public previousCameraHolder:Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget v3, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    iget v4, p2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    iget v0, v0, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    iget v4, p2, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    if-ne v0, v4, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->cachedCameraStatusHolder:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    if-eqz v4, :cond_4

    .line 9
    iget v4, v4, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mOpen:I

    if-ne v4, v1, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eqz v4, :cond_3

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    .line 14
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mPreview:I

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    if-eq v6, v3, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    invoke-direct {v5, v4, v3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener$CameraStatus;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_8
    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->previousCameraHolder:Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;->liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

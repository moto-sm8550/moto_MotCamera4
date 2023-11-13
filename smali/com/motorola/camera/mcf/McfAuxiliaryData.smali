.class public final Lcom/motorola/camera/mcf/McfAuxiliaryData;
.super Ljava/lang/Object;
.source "McfAuxiliaryData.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;,
        Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    }
.end annotation


# static fields
.field public static final BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxBinData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxFrameData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfDepthRender;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxBmpData;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfImagingModelAuxData;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxFrameData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MCFJV_McfAuxiliaryData"


# instance fields
.field private final mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    new-instance v1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v2, "motorola.camera.mcf.auxiliaryData.depthMap"

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 2
    new-instance v1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-class v2, Lcom/motorola/camera/mcf/McfDepthRender;

    const-string v3, "motorola.camera.mcf.auxiliaryData.depthRender"

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 3
    new-instance v1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v2, "motorola.camera.mcf.auxiliaryData.postCapFrame"

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 4
    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-class v1, Lcom/motorola/camera/mcf/McfAuxBinData;

    const-string v2, "motorola.camera.mcf.auxiliaryData.binData"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 5
    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-class v1, Lcom/motorola/camera/mcf/McfAuxBmpData;

    const-string v2, "motorola.camera.mcf.auxiliaryData.docData"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    .line 6
    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-class v1, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    const-string v2, "motorola.camera.mcf.auxiliaryData.imagingModel"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getKeys()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public parseFromJson(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "DepthMap"

    .line 2
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3
    new-instance v1, Lcom/motorola/camera/mcf/McfAuxFrameData;

    invoke-direct {v1, p1, p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->setDepthMap(Lcom/motorola/camera/mcf/McfAuxFrameData;)V

    const-string p1, "DepthRenderInfo"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/motorola/camera/mcf/McfDepthRender;

    invoke-direct {p2, p1}, Lcom/motorola/camera/mcf/McfDepthRender;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->setDepthRender(Lcom/motorola/camera/mcf/McfDepthRender;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->TAG:Ljava/lang/String;

    const-string p2, "Failed to parse aux depth data: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    throw p0
.end method

.method public final set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    invoke-direct {v0, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setBinData(Lcom/motorola/camera/mcf/McfAuxBinData;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBmpData(Lcom/motorola/camera/mcf/McfAuxBmpData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxBmpData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DOC_SCAN_BMP_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setBoolean(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setByte(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Byte;",
            ">;B)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDepthMap(Lcom/motorola/camera/mcf/McfAuxFrameData;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DepthMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostViewFrame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDepthRender(Lcom/motorola/camera/mcf/McfDepthRender;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFloat(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImagingModel(Lcom/motorola/camera/mcf/McfImagingModelAuxData;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setInt(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLong(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "["

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "("

    .line 2
    invoke-static {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p0, "]"

    .line 5
    invoke-static {v0, p0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

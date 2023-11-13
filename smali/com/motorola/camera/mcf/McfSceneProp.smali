.class public final Lcom/motorola/camera/mcf/McfSceneProp;
.super Ljava/lang/Object;
.source "McfSceneProp.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/McfSceneProp$Value;,
        Lcom/motorola/camera/mcf/McfSceneProp$Key;
    }
.end annotation


# static fields
.field public static final BARCODE:Lcom/motorola/camera/mcf/McfSceneProp$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Lcom/motorola/camera/mcf/McfBarcode;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOC:Lcom/motorola/camera/mcf/McfSceneProp$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Lcom/motorola/camera/mcf/McfDoc;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACE_BEAUTY:Lcom/motorola/camera/mcf/McfSceneProp$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "[",
            "Lcom/motorola/camera/mcf/McfFaceBeauty;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAT_SCENE:Lcom/motorola/camera/mcf/McfSceneProp$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LUX:Lcom/motorola/camera/mcf/McfSceneProp$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCENES:Lcom/motorola/camera/mcf/McfSceneProp$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "[",
            "Lcom/motorola/camera/mcf/McfScene;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MCFJV_McfSceneProp"


# instance fields
.field private final mPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key;",
            "Lcom/motorola/camera/mcf/McfSceneProp$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "motorola.camera.mcf.property.lux"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->LUX:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    .line 2
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    const-class v1, [Lcom/motorola/camera/mcf/McfScene;

    const-string v2, "motorola.camera.mcf.property.scenes"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->SCENES:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    .line 3
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    const-class v1, [Lcom/motorola/camera/mcf/McfFaceBeauty;

    const-string v2, "motorola.camera.mcf.property.beauty"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->FACE_BEAUTY:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    .line 4
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    const-class v1, Lcom/motorola/camera/mcf/McfBarcode;

    const-string v2, "motorola.camera.mcf.property.barcode"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->BARCODE:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    .line 5
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    const-class v1, Lcom/motorola/camera/mcf/McfDoc;

    const-string v2, "motorola.camera.mcf.property.doc"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->DOC:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    .line 6
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "motorola.camera.mcf.property.flatscene"

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mcf/McfSceneProp$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->FLAT_SCENE:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfSceneProp;->mPropertyMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get(Lcom/motorola/camera/mcf/McfSceneProp$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfSceneProp;->mPropertyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfSceneProp$Value;

    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfSceneProp$Value;->mValue:Ljava/lang/Object;

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
            "Lcom/motorola/camera/mcf/McfSceneProp$Key;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfSceneProp;->mPropertyMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/mcf/McfSceneProp;->mPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfSceneProp$Value;

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, v0, Lcom/motorola/camera/mcf/McfSceneProp$Value;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfSceneProp$Value;

    invoke-direct {v0, p2}, Lcom/motorola/camera/mcf/McfSceneProp$Value;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfSceneProp;->mPropertyMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setBarcode(Lcom/motorola/camera/mcf/McfBarcode;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->BARCODE:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBoolean(Lcom/motorola/camera/mcf/McfSceneProp$Key;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setByte(Lcom/motorola/camera/mcf/McfSceneProp$Key;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Byte;",
            ">;B)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDoc(Lcom/motorola/camera/mcf/McfDoc;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->DOC:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFaceBeauty([Lcom/motorola/camera/mcf/McfFaceBeauty;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->FACE_BEAUTY:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFloat(Lcom/motorola/camera/mcf/McfSceneProp$Key;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setInt(Lcom/motorola/camera/mcf/McfSceneProp$Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLong(Lcom/motorola/camera/mcf/McfSceneProp$Key;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfSceneProp$Key<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setScenes([Lcom/motorola/camera/mcf/McfScene;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfSceneProp;->SCENES:Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfSceneProp;->set(Lcom/motorola/camera/mcf/McfSceneProp$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfSceneProp;->mPropertyMap:Ljava/util/Map;

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

    check-cast v2, Lcom/motorola/camera/mcf/McfSceneProp$Key;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfSceneProp$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfSceneProp$Value;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfSceneProp$Value;->toString()Ljava/lang/String;

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

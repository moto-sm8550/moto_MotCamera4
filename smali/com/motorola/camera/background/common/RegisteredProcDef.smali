.class public final enum Lcom/motorola/camera/background/common/RegisteredProcDef;
.super Ljava/lang/Enum;
.source "RegisteredProcDef.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/background/common/RegisteredProcDef;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegisteredProcDef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegisteredProcDef.kt\ncom/motorola/camera/background/common/RegisteredProcDef\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,33:1\n8804#2,2:34\n9064#2,4:36\n*S KotlinDebug\n*F\n+ 1 RegisteredProcDef.kt\ncom/motorola/camera/background/common/RegisteredProcDef\n*L\n22#1:34,2\n22#1:36,4\n*E\n"
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final enum CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

.field public static final enum POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final enum PROCESS_MANAGER_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final enum SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/camera/background/common/RegisteredProcDef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final givenName:Ljava/lang/String;

.field public final id:I

.field public final type:Lcom/motorola/camera/background/common/ClientType;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v6, Lcom/motorola/camera/background/common/RegisteredProcDef;

    sget-object v7, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "Unknown"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    .line 2
    new-instance v8, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v1, "PROCESS_MANAGER_SERVICE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ProcessManager_Service"

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    sput-object v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->PROCESS_MANAGER_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 3
    new-instance v9, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v1, "CAMERA_APP"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "Camera2_App"

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    sput-object v9, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 4
    new-instance v10, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v1, "SAVE_IMAGE_SERVICE"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "SaveImage_Service"

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    sput-object v10, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    .line 5
    new-instance v0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    sget-object v16, Lcom/motorola/camera/background/common/ClientType;->COPROC:Lcom/motorola/camera/background/common/ClientType;

    const-string v12, "POST_PROCESS_SERVICE"

    const/4 v13, 0x4

    const/4 v14, 0x3

    const-string v15, "PostProcess_Service"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    sput-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v3, 0x1

    aput-object v8, v1, v3

    const/4 v3, 0x2

    aput-object v9, v1, v3

    const/4 v3, 0x3

    aput-object v10, v1, v3

    const/4 v3, 0x4

    aput-object v0, v1, v3

    sput-object v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->$VALUES:[Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v0, Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;

    .line 6
    invoke-static {}, Lcom/motorola/camera/background/common/RegisteredProcDef;->values()[Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v0

    .line 7
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    move v1, v3

    .line 8
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 10
    iget v5, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sput-object v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    .line 2
    iput-object p4, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    .line 3
    iput-object p5, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->$VALUES:[Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object v0
.end method

.class public final Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;
.super Ljava/lang/Object;
.source "McfCameraXConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

.field public static volatile align512:Z = false

.field public static volatile initialize:Z = true

.field public static volatile swapChroma:Z


# instance fields
.field public final mcfJson:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "mcfJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->mcfJson:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final cacheConfig()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->Companion:Lcom/motorola/camera/camerax_extensions/McfCameraXConfig$Companion;

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->mcfJson:Lorg/json/JSONObject;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z

    if-eqz v1, :cond_3

    .line 5
    sget-object v1, Lcom/motorola/camera/camerax_extensions/JsonUtils;->INSTANCE:Lcom/motorola/camera/camerax_extensions/JsonUtils;

    const-string v2, "camerax"

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1, v2, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    const-string v4, "align-512"

    .line 8
    invoke-virtual {v1, v4, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    .line 10
    :goto_0
    sput-boolean v4, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->align512:Z

    const-string/jumbo v4, "swap-chroma"

    .line 11
    invoke-virtual {v1, v4, p0, v3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    .line 13
    :goto_1
    sput-boolean p0, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->swapChroma:Z

    .line 14
    :cond_2
    sput-boolean v2, Lcom/motorola/camera/camerax_extensions/McfCameraXConfig;->initialize:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

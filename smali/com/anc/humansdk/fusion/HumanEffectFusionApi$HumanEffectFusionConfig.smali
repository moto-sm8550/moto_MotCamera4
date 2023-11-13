.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
.super Ljava/lang/Object;
.source "HumanEffectFusionApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanEffectFusionConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    }
.end annotation


# instance fields
.field public cache_path:Ljava/lang/String;

.field public isBackCamera:Z

.field public isRealTime:Z

.field public log_level:I

.field public model_data:[B

.field public native_lib_path:Ljava/lang/String;

.field public power_mode:I

.field public sdkLoadType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    .line 31
    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    .line 32
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    const-string v1, ""

    .line 35
    iput-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    return-void
.end method

.method public constructor <init>(Z[BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    .line 13
    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    .line 14
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    .line 15
    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    .line 16
    iput-object p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    .line 17
    iput-object p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    .line 19
    iput-boolean p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    return-void
.end method

.method public constructor <init>(Z[BLjava/lang/String;Ljava/lang/String;ZLcom/anc/humansdk/fusion/SdkPowerMode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    .line 3
    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    .line 4
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    .line 5
    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    .line 6
    iput-object p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    .line 7
    iput-object p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    .line 9
    iput-boolean p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    .line 10
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    return-void
.end method

.method public constructor <init>([BZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    .line 22
    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    .line 23
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    .line 24
    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    .line 25
    iput-boolean p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    .line 26
    iput-object p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    return-void
.end method

.method public static Build()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 1

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setSdkLoadType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    const-string v3, "null"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "sdkCapability %d, model size %d, cache path %s, lib path %s, realtime %b, power %d, sdkLoadType:%d"

    .line 4
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/motorola/camera/ai/model/TipsModel$Companion;
.super Ljava/lang/Object;
.source "TipsModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ai/model/TipsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTipModel(Ljava/lang/String;)Lcom/motorola/camera/ai/model/TipsModel;
    .locals 5

    .line 1
    invoke-static {}, Lcom/motorola/camera/ai/model/TipsModel;->values()[Lcom/motorola/camera/ai/model/TipsModel;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-object v3, p0, v1

    .line 2
    iget-object v4, v3, Lcom/motorola/camera/ai/model/TipsModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v4, :cond_0

    .line 3
    iget-object v2, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    :cond_0
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

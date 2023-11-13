.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$IMAGE_STABILIZATION;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.source "ContentAiProviderHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMAGE_STABILIZATION"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "IMAGE_STABILIZATION"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final checkState$enumunboxing$(II)I
    .locals 1

    .line 1
    div-int/lit8 p0, p2, 0x64

    .line 2
    div-int/lit8 v0, p1, 0x64

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    :goto_0
    const/4 p0, 0x5

    goto :goto_1

    :cond_1
    if-ge p2, p1, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

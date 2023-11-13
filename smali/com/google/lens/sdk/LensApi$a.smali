.class final Lcom/google/lens/sdk/LensApi$a;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/lens/sdk/LensApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

.field private final b:I
    .annotation build Lcom/google/lens/sdk/LensApi$LensFeature;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/google/lens/sdk/LensApi$LensFeature;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "feature"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi$a;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    .line 3
    iput p2, p0, Lcom/google/lens/sdk/LensApi$a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Laf;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/lens/sdk/LensApi$a;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/16 p1, 0x21

    const-string v2, "Invalid lens feature: "

    const-string v3, "LensApi"

    .line 2
    invoke-static {p1, v2, v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Laf;->c()Laf$a;

    move-result-object p1

    invoke-virtual {p1}, Laf$a;->a()I

    move-result v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Laf;->b()Laf$a;

    move-result-object p1

    invoke-virtual {p1}, Laf$a;->a()I

    move-result v1

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi$a;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    invoke-interface {p0, v1}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void
.end method

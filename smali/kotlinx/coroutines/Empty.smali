.class public final Lkotlinx/coroutines/Empty;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# instance fields
.field public final isActive:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlinx/coroutines/Empty;->isActive:Z

    return-void
.end method


# virtual methods
.method public final getList()Lkotlinx/coroutines/NodeList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/coroutines/Empty;->isActive:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Empty{"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean p0, p0, Lkotlinx/coroutines/Empty;->isActive:Z

    if-eqz p0, :cond_0

    const-string p0, "Active"

    goto :goto_0

    :cond_0
    const-string p0, "New"

    :goto_0
    const/16 v1, 0x7d

    .line 3
    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/manager/ImageAssetManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

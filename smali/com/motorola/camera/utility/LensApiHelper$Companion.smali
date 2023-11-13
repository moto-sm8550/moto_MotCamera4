.class public final Lcom/motorola/camera/utility/LensApiHelper$Companion;
.super Ljava/lang/Object;
.source "LensApiHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/LensApiHelper;
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
.method public final getInstance()Lcom/motorola/camera/utility/LensApiHelper;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/utility/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/LensApiHelper;

    return-object p0
.end method

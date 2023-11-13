.class public final Lcom/motorola/camera/background/common/RegisteredProcDef$Companion;
.super Ljava/lang/Object;
.source "RegisteredProcDef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/common/RegisteredProcDef;
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
.method public final fromId(Ljava/lang/Integer;)Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object p0
.end method

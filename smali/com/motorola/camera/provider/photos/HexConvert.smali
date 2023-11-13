.class public final Lcom/motorola/camera/provider/photos/HexConvert;
.super Ljava/lang/Object;
.source "HexConvert.java"


# static fields
.field public static final HEX_DIGITS_ARRAY:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/HexConvert;->HEX_DIGITS_ARRAY:[C

    return-void
.end method

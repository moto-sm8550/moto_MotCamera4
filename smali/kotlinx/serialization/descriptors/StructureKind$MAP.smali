.class public final Lkotlinx/serialization/descriptors/StructureKind$MAP;
.super Lkotlinx/serialization/descriptors/StructureKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/StructureKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MAP"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/StructureKind$MAP;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/descriptors/StructureKind;-><init>()V

    return-void
.end method

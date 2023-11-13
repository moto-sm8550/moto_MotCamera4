.class public final Lkotlinx/serialization/descriptors/StructureKind$CLASS;
.super Lkotlinx/serialization/descriptors/StructureKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/StructureKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CLASS"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$CLASS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/StructureKind$CLASS;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/descriptors/StructureKind;-><init>()V

    return-void
.end method

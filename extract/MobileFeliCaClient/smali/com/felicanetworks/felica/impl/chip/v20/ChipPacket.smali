.class Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;
.super Ljava/lang/Object;
.source "ChipPacket.java"


# static fields
.field private static final CRC_TABLE:[I

.field private static final MAX_DATA_LENGTH:I = 0xff

.field private static final MAX_THRU_DATA_LENGTH:I = 0xfa

.field private static final MIN_DATA_LENGTH:I = 0x2

.field private static final MIN_THRU_DATA_LENGTH:I = 0x1

.field private static final POSTAMBLE:I = 0x0

.field private static final PREAMBLE:I = 0x0

.field private static final START_CODE_CONTROL:I = 0xf5

.field private static final START_CODE_DATA:I = 0xfa

.field private static final TYPE_ACK:I = 0x5

.field private static final TYPE_DATA:I = 0x1000

.field private static final TYPE_INIT:I = 0xffff

.field private static final TYPE_PORT_BUSY:I = 0x5a

.field private static final TYPE_PORT_READY:I = 0x55

.field private static final TYPE_THRU_DATA:I = 0x1001

.field private static final TYPE_VALID_THRU_DATA:I = 0x1003

.field private static mData:Lcom/felicanetworks/felica/util/ByteBuffer;


# instance fields
.field private final commandThru:[B

.field private data:[B

.field private dataLength:I

.field private final responseThru:[B

.field private type:I

.field private writeData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa1

    .line 98
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x1021

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x2042

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x3063

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x4084

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 99
    const/16 v2, 0x50a5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x60c6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x70e7

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8108

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x9129

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0xa14a

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0xb16b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xc18c

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xd1ad

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xe1ce

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0xf1ef

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 100
    const/16 v2, 0x1231

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x210

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3273

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x2252

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x52b5

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x4294

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x72f7

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x62d6

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x9339

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x8318

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0xb37b

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 101
    const v2, 0xa35a

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0xd3bd

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xc39c

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0xf3ff

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xe3de

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x2462

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x3443

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1401

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x64e6

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x74c7

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 102
    const/16 v2, 0x44a4

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x5485

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0xa56a

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0xb54b

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8528

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x9509

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0xe5ee

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0xf5cf

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0xc5ac

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0xd58d

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x3653

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 103
    const/16 v2, 0x2672

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x1611

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x630

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x76d7

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x66f6

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x5695

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x46b4

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xb75b

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0xa77a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x9719

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x8738

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 104
    const v2, 0xf7df

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xe7fe

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xd79d

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0xc7bc

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x48c4

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x58e5

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x6886

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x78a7

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x840

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x1861

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x2802

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 105
    const/16 v2, 0x3823

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xc9cc

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xd9ed

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xe98e

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xf9af

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x8948

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x9969

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xa90a

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xb92b

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x5af5

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x4ad4

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 106
    const/16 v2, 0x7ab7

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x6a96

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1a71

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xa50

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x3a33

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x2a12

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xdbfd

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xcbdc

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0xfbbf

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xeb9e

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x9b79

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 107
    const v2, 0x8b58

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xbb3b

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xab1a

    aput v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x6ca6

    aput v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x7c87

    aput v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x4ce4

    aput v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x5cc5

    aput v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x2c22

    aput v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x3c03

    aput v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xc60

    aput v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x1c41

    aput v2, v0, v1

    const/16 v1, 0x68

    .line 108
    const v2, 0xedae

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xfd8f

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0xcdec

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xddcd

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xad2a

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xbd0b

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x8d68

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x9d49

    aput v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x7e97

    aput v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x6eb6

    aput v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x5ed5

    aput v2, v0, v1

    const/16 v1, 0x73

    .line 109
    const/16 v2, 0x4ef4

    aput v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x3e13

    aput v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e32

    aput v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x1e51

    aput v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xe70

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xff9f

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xefbe

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xdfdd

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xcffc

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xbf1b

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xaf3a

    aput v2, v0, v1

    const/16 v1, 0x7e

    .line 110
    const v2, 0x9f59

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x8f78

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x9188

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x81a9

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xb1ca

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xa1eb

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xd10c

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xc12d

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xf14e

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xe16f

    aput v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x1080

    aput v2, v0, v1

    const/16 v1, 0x89

    .line 111
    aput v3, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x30c2

    aput v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x20e3

    aput v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x5004

    aput v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x4025

    aput v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x7046

    aput v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x6067

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x83b9

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x9398

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xa3fb

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xb3da

    aput v2, v0, v1

    const/16 v1, 0x94

    .line 112
    const v2, 0xc33d

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xd31c

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xe37f

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xf35e

    aput v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x2b1

    aput v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x1290

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x22f3

    aput v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x32d2

    aput v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x4235

    aput v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x5214

    aput v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x6277

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 113
    const/16 v2, 0x7256

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xb5ea

    aput v2, v0, v1

    const v1, 0xa5cb

    aput v1, v0, v3

    const/16 v1, 0xa2

    const v2, 0x95a8

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x8589

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xf56e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xe54f

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xd52c

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xc50d

    aput v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x34e2

    aput v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x24c3

    aput v2, v0, v1

    const/16 v1, 0xaa

    .line 114
    const/16 v2, 0x14a0

    aput v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x481

    aput v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x7466

    aput v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x6447

    aput v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x5424

    aput v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x4405

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xa7db

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xb7fa

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x8799

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x97b8

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0xe75f    # 8.3E-41f

    aput v2, v0, v1

    const/16 v1, 0xb5

    .line 115
    const v2, 0xf77e

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0xc71d

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0xd73c

    aput v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x26d3

    aput v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x36f2

    aput v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x691

    aput v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x16b0

    aput v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x6657

    aput v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x7676

    aput v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x4615

    aput v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x5634

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 116
    const v2, 0xd94c

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0xc96d

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0xf90e

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0xe92f

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x99c8

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x89e9

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0xb98a

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0xa9ab

    aput v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x5844

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x4865

    aput v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x7806

    aput v2, v0, v1

    const/16 v1, 0xcb

    .line 117
    const/16 v2, 0x6827

    aput v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x18c0

    aput v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x8e1

    aput v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x3882

    aput v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x28a3

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0xcb7d

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0xdb5c

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0xeb3f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0xfb1e

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x8bf9

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x9bd8

    aput v2, v0, v1

    const/16 v1, 0xd6

    .line 118
    const v2, 0xabbb

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xbb9a

    aput v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x4a75

    aput v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x5a54

    aput v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x6a37

    aput v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, 0x7a16

    aput v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0xaf1

    aput v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x1ad0

    aput v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x2ab3

    aput v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x3a92

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0xfd2e

    aput v2, v0, v1

    const/16 v1, 0xe1

    .line 119
    const v2, 0xed0f

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0xdd6c

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0xcd4d

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0xbdaa

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xad8b

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x9de8

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x8dc9

    aput v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x7c26

    aput v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x6c07

    aput v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x5c64

    aput v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x4c45

    aput v2, v0, v1

    const/16 v1, 0xec

    .line 120
    const/16 v2, 0x3ca2

    aput v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x2c83

    aput v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x1ce0

    aput v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xcc1

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0xef1f

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0xff3e

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xcf5d

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xdf7c

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0xaf9b

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xbfba

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x8fd9

    aput v2, v0, v1

    const/16 v1, 0xf7

    .line 121
    const v2, 0x9ff8

    aput v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x6e17

    aput v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x7e36

    aput v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x4e55

    aput v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x5e74

    aput v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x2e93

    aput v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x3eb2

    aput v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xed1

    aput v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x1ef0

    aput v2, v0, v1

    .line 98
    sput-object v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->CRC_TABLE:[I

    .line 280
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v1, 0x104

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->mData:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-array v0, v4, [B

    const/16 v1, -0x34

    aput-byte v1, v0, v2

    aput-byte v6, v0, v3

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    .line 131
    new-array v0, v4, [B

    const/16 v1, -0x33

    aput-byte v1, v0, v2

    aput-byte v6, v0, v3

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    .line 157
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 159
    const/16 v0, 0x104

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    .line 160
    const/16 v0, 0x104

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    .line 162
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method private calcCRC16(IB)I
    .locals 3
    .param p1, "crc"    # I
    .param p2, "b"    # B

    .prologue
    .line 603
    sget-object v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->CRC_TABLE:[I

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v2, p2, 0xff

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    shl-int/lit8 v1, p1, 0x8

    xor-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private calcCRC16([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "crc":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-lt v1, v2, :cond_0

    .line 612
    return v0

    .line 610
    :cond_0
    aget-byte v2, p1, v1

    invoke-direct {p0, v0, v2}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->calcCRC16(IB)I

    move-result v0

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method compareData([B)Z
    .locals 5
    .param p1, "target"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x6

    .line 340
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isData()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    :goto_0
    return v1

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    iget v3, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    if-eq v2, v3, :cond_2

    .line 347
    :cond_1
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    if-lt v0, v2, :cond_3

    .line 357
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    const/4 v1, 0x1

    goto :goto_0

    .line 351
    :cond_3
    aget-byte v2, p1, v0

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 352
    const-string v2, "%s"

    const-string v3, "702"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getData()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 264
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 266
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 268
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    new-array v0, v1, [B

    .line 272
    .local v0, "res":[B
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    array-length v2, v0

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    const-string v1, "%s return=%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getDataBuf()Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 298
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->mData:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 299
    sget-object v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->mData:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 300
    sget-object v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->mData:Lcom/felicanetworks/felica/util/ByteBuffer;

    goto :goto_0
.end method

.method getThruData()[B
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 314
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isThruData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 318
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 321
    .local v0, "res":[B
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    array-length v2, v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    const-string v1, "%s return=%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method isACK()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    const-string v0, "%s"

    const-string v3, "000"

    invoke-static {v6, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v3, "%s return=%b"

    const-string v4, "999"

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v6, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v5, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 174
    goto :goto_0

    :cond_1
    move v1, v2

    .line 176
    goto :goto_1
.end method

.method isData()Z
    .locals 7

    .prologue
    const/16 v6, 0x1000

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    const-string v0, "%s"

    const-string v3, "000"

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 218
    const-string v3, "%s return=%b"

    const-string v4, "999"

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    and-int/lit16 v0, v0, 0x1000

    if-ne v0, v6, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    :cond_1
    move v1, v2

    .line 220
    goto :goto_1
.end method

.method isPortBusy()Z
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    const-string v0, "%s"

    const-string v3, "000"

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v3, "%s return=%b"

    const-string v4, "999"

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v6, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v1, v2

    .line 206
    goto :goto_1
.end method

.method isPortReady()Z
    .locals 7

    .prologue
    const/16 v6, 0x55

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    const-string v0, "%s"

    const-string v3, "000"

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v3, "%s return=%b"

    const-string v4, "999"

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    if-ne v0, v6, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 189
    goto :goto_0

    :cond_1
    move v1, v2

    .line 191
    goto :goto_1
.end method

.method isThruData()Z
    .locals 7

    .prologue
    const/16 v6, 0x1001

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    const-string v0, "%s"

    const-string v3, "000"

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string v3, "%s return=%b"

    const-string v4, "999"

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    and-int/lit16 v0, v0, 0x1001

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    and-int/lit16 v0, v0, 0x1001

    if-ne v0, v6, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 233
    goto :goto_0

    :cond_1
    move v1, v2

    .line 235
    goto :goto_1
.end method

.method isValidThruData()Z
    .locals 7

    .prologue
    const/16 v6, 0x1003

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    const-string v0, "%s"

    const-string v3, "000"

    invoke-static {v5, v0, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v3, "%s return=%b"

    const-string v4, "999"

    .line 249
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    and-int/lit16 v0, v0, 0x1003

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 248
    invoke-static {v5, v3, v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    and-int/lit16 v0, v0, 0x1003

    if-ne v0, v6, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 249
    goto :goto_0

    :cond_1
    move v1, v2

    .line 251
    goto :goto_1
.end method

.method read(Lcom/felicanetworks/felica/impl/chip/v20/Chip;J)Z
    .locals 12
    .param p1, "chip"    # Lcom/felicanetworks/felica/impl/chip/v20/Chip;
    .param p2, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 489
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 492
    iput v8, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    .line 494
    const v0, 0xffff

    iput v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    .line 495
    const v7, 0xffff

    .line 497
    .local v7, "tempType":I
    invoke-virtual {p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->readByte(J)I

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "%s"

    const-string v1, "700"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 588
    :goto_0
    return v2

    .line 502
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->readByte(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 576
    const-string v0, "%s"

    const-string v1, "706"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 577
    goto :goto_0

    .line 505
    :sswitch_0
    invoke-virtual {p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->readByte(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 519
    const-string v0, "%s"

    const-string v1, "701"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 520
    goto :goto_0

    .line 508
    :sswitch_1
    const/4 v7, 0x5

    .line 580
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->readByte(J)I

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    const-string v0, "%s"

    const-string v1, "707"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 582
    goto :goto_0

    .line 512
    :sswitch_2
    const/16 v7, 0x55

    .line 513
    goto :goto_1

    .line 516
    :sswitch_3
    const/16 v7, 0x5a

    .line 517
    goto :goto_1

    .line 525
    :sswitch_4
    const/16 v7, 0x1000

    .line 527
    invoke-virtual {p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->readByte(J)I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    .line 528
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    if-lt v0, v10, :cond_2

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_3

    .line 529
    :cond_2
    const-string v0, "%s"

    const-string v1, "702"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 530
    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 540
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v0, 0x2

    move-object v0, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->readContinuousBytes([BIIJ)V

    .line 541
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    invoke-direct {p0, v0, v8, v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->calcCRC16([BII)I

    move-result v6

    .line 545
    .local v6, "crc":I
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    ushr-int/lit8 v1, v6, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    if-eq v0, v1, :cond_4

    .line 546
    const-string v0, "%s"

    const-string v1, "703"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 547
    goto/16 :goto_0

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    iget v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v1, v6, 0xff

    int-to-byte v1, v1

    if-eq v0, v1, :cond_5

    .line 552
    const-string v0, "%s"

    const-string v1, "704"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v2, v8

    .line 553
    goto/16 :goto_0

    .line 556
    :cond_5
    iget v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->dataLength:I

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    aget-byte v0, v0, v2

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    aget-byte v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    aget-byte v0, v0, v10

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    aget-byte v1, v1, v10

    if-ne v0, v1, :cond_1

    .line 559
    const/16 v7, 0x1001

    .line 560
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    aget-byte v0, v0, v11

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    aget-byte v1, v1, v11

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->data:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->responseThru:[B

    const/4 v3, 0x4

    aget-byte v1, v1, v3

    if-ne v0, v1, :cond_1

    .line 562
    const/16 v7, 0x1003

    .line 574
    goto/16 :goto_1

    .line 585
    .end local v6    # "crc":I
    :cond_6
    iput v7, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    .line 587
    const-string v0, "%s type=%d"

    const-string v1, "999"

    iget v3, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9, v0, v1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 502
    :sswitch_data_0
    .sparse-switch
        0xf5 -> :sswitch_0
        0xfa -> :sswitch_4
    .end sparse-switch

    .line 505
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_1
        0x55 -> :sswitch_2
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method write(Lcom/felicanetworks/felica/impl/chip/v20/Chip;[B)V
    .locals 7
    .param p1, "chip"    # Lcom/felicanetworks/felica/impl/chip/v20/Chip;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 375
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 378
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lt v1, v6, :cond_0

    array-length v1, p2

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 379
    :cond_0
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 380
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    aput-byte v4, v1, v4

    .line 400
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    const/4 v2, 0x1

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    .line 401
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    array-length v2, p2

    invoke-static {p2, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    array-length v1, p2

    invoke-direct {p0, p2, v4, v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->calcCRC16([BII)I

    move-result v0

    .line 403
    .local v0, "crc":I
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 404
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    array-length v2, p2

    add-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 405
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    aput-byte v4, v1, v2

    .line 406
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    array-length v2, p2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p1, v1, v4, v2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->writeContinuousBytes([BII)V

    .line 408
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 409
    return-void
.end method

.method write(Lcom/felicanetworks/felica/impl/chip/v20/Chip;[BI)V
    .locals 6
    .param p1, "chip"    # Lcom/felicanetworks/felica/impl/chip/v20/Chip;
    .param p2, "data"    # [B
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 632
    if-eqz p2, :cond_0

    if-lt p3, v5, :cond_0

    array-length v1, p2

    if-lt v1, p3, :cond_0

    const/16 v1, 0xff

    if-le p3, v1, :cond_1

    .line 634
    :cond_0
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    aput-byte v4, v1, v4

    .line 638
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    const/4 v2, 0x1

    const/4 v3, -0x6

    aput-byte v3, v1, v2

    .line 639
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    invoke-static {p2, v4, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    invoke-direct {p0, p2, v4, p3}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->calcCRC16([BII)I

    move-result v0

    .line 641
    .local v0, "crc":I
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    add-int/lit8 v2, p3, 0x2

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 642
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    add-int/lit8 v2, p3, 0x3

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 643
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    add-int/lit8 v2, p3, 0x4

    aput-byte v4, v1, v2

    .line 644
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    add-int/lit8 v2, p3, 0x5

    invoke-virtual {p1, v1, v4, v2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->writeContinuousBytes([BII)V

    .line 647
    return-void
.end method

.method writeThru(Lcom/felicanetworks/felica/impl/chip/v20/Chip;[BI)V
    .locals 7
    .param p1, "chip"    # Lcom/felicanetworks/felica/impl/chip/v20/Chip;
    .param p2, "data"    # [B
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 426
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 429
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lt v1, v3, :cond_0

    .line 430
    array-length v1, p2

    const/16 v2, 0xfa

    if-le v1, v2, :cond_1

    .line 431
    :cond_0
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 432
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    aput-byte v4, v1, v4

    .line 459
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    const/4 v2, -0x6

    aput-byte v2, v1, v3

    .line 460
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 461
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    const/4 v2, 0x3

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    .line 462
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    const/4 v2, 0x4

    ushr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 463
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v6, v2}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->calcCRC16([BII)I

    move-result v0

    .line 466
    .local v0, "crc":I
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 467
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 468
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    aput-byte v4, v1, v2

    .line 469
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeData:[B

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->commandThru:[B

    array-length v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p1, v1, v4, v2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->writeContinuousBytes([BII)V

    .line 471
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 472
    return-void
.end method

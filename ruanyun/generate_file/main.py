
from gooey import Gooey, GooeyParser


@Gooey(target="ruby command", program_name='Frame Extraction v1.0', suppress_gooey_flag=True)
def main():
    parser = GooeyParser(description="Extracting frames from a movie using FFMPEG")
    ffmpeg = parser.add_argument_group('Frame Extraction Util')
    ffmpeg.add_argument('-f')

    ffmpeg.add_argument('--name',
                        metavar='module name',
                        help='')
    parser.parse_args()

if __name__ == '__main__':
    main()
